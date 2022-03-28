import 'package:demo/cubit/authentication_cubit.dart';
import 'package:demo/router/authentication_guard.dart';
import 'package:demo/router/auto_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final AuthenticationCubit _authCubit = AuthenticationCubit();
final AppRouter _appRouter = AppRouter(
  checkIfAuthenticated: CheckIfAuthenticated(authenticationCubit: _authCubit),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationCubit>(
      create: (context) => _authCubit,
      child: MaterialApp.router(
        title: 'Demo',
        routerDelegate: _appRouter.delegate(navigatorObservers: () => []),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
