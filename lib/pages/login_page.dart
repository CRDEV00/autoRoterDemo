import 'package:auto_route/auto_route.dart';
import 'package:demo/cubit/authentication_cubit.dart';
import 'package:demo/router/auto_route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatelessWidget {
  final String? redirectTo;

  const LoginPage({Key? key, @QueryParam('redirectTo') this.redirectTo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(child: Text('login')),
          ElevatedButton(
            onPressed: () {
              print(redirectTo);
              BlocProvider.of<AuthenticationCubit>(context).login();
              if (redirectTo != null && redirectTo!.isNotEmpty) {
                context.router.navigateNamed(redirectTo!, includePrefixMatches: true);
              } else {
                // no query params found
                context.router.navigateNamed('mainWrapper/home');
              }
            },
            child: const Text('go'),
          ),
          ElevatedButton(
              onPressed: () {
                context.router.push(const SingIn());
              },
              child: const Text('Go to sig up')),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).navigateNamed('mainWrapper/profile/profileSettings',
                    includePrefixMatches: true);
              },
              child: const Text('to go profile details')),
        ],
      ),
    );
  }
}
