import 'package:flutter/material.dart';

class SingInPage extends StatelessWidget {
  const SingInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Center(child: Text('Sing in')),
          ElevatedButton(
            onPressed: () {},
            child: const Text('go'),
          )
        ],
      ),
    );
  }
}
