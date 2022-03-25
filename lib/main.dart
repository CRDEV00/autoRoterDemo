import 'package:auto_route/auto_route.dart';
import 'package:demo/cubit/authentication_cubit.dart';
import 'package:demo/router/auto_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

late AppRouter _appRouter;
late AuthenticationCubit _authCubit;

void main() {
  _authCubit = AuthenticationCubit();
  _appRouter = AppRouter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationCubit>(
      create: (context) => _authCubit,
      child: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return MaterialApp.router(
            title: 'Demo',
            routerDelegate: AutoRouterDelegate.declarative(_appRouter,
                routes: (_) => _getTargetRoute(state.isAuthenticated, context, state.redirectUrl),
                onNavigate: (url, band) {
                  print('-> ${url.path}');
                  if (url.path != '/' && url.path != 'login') {
                    BlocProvider.of<AuthenticationCubit>(context).addRedirectUrl(url.path);
                  }
                }),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }

  List<PageRouteInfo<dynamic>> _getTargetRoute(
      bool isAuthenticated, BuildContext context, String? path) {
    print('->> ${path}');
    return [
      if (isAuthenticated) MainWrapper(redirectTo: path) else Login(redirectTo: path),
    ];
  }
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
/* 
return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, _) {},
      builder: (context, state) {
        return AutoRouter.declarative(
          routes: (_) {
            return [
              if (state.isAuthenticated) const HomeRoute() else const Login(),
            ];
          },
        );
      },
    ); */
