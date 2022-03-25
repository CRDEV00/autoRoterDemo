import 'package:auto_route/auto_route.dart';
import 'package:demo/cubit/authentication_cubit.dart';
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
              BlocProvider.of<AuthenticationCubit>(context).login(url: redirectTo);
              if (redirectTo != null) {
                print(redirectTo);
              }
            },
            child: const Text('go'),
          )
        ],
      ),
    );
  }
}
