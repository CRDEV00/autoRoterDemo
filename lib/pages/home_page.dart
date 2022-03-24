import 'package:auto_route/auto_route.dart';
import 'package:demo/router/auto_route.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(child: Text('Home')),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(const HomeDetailsRoute());
                // context.pushRoute(const HomeDetailsRoute());
              },
              child: const Text('to go home details')),
        ],
      ),
    );
  }
}
