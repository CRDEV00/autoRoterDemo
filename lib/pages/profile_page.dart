import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(child: Text('Profile page')),
          ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).pushNamed('profileSettings');
              },
              child: const Text('to go profile details')),
        ],
      ),
    );
  }
}