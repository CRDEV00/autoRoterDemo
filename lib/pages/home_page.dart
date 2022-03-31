import 'package:auto_route/auto_route.dart';
import 'package:demo/cubit/authentication_cubit.dart';
import 'package:demo/router/auto_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Home')),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const HomeDetailsRoute());
              },
              child: const Text('to go home details')),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('homeDetails');
              },
              child: const Text('to go home details (named)')),
          ElevatedButton(
              onPressed: () {
                print(AutoRouter.of(context).stack);
                AutoRouter.of(context)
                    .navigateNamed('profile/profileSettings', includePrefixMatches: true);
              },
              child: const Text('to go profile details')),
          ElevatedButton(
              onPressed: () {
                BlocProvider.of<AuthenticationCubit>(context).logout();
                context.router.navigate(Login());
              },
              child: const Text('log out')),
        ],
      ),
    );
  }
}
