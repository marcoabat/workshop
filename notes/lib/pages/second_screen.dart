import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen!'),
      ),
      body: ElevatedButton(
        onPressed: () {
          //TODO naviagate back
        },
        child: const Text("We need to go back!"),
      ),
    );
  }
}
