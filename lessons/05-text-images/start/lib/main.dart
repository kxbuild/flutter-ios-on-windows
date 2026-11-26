import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: Center(child: GreetingCard())),
    ),
  );
}

class GreetingCard extends StatelessWidget {
  const GreetingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: MainAxisSize.min,
      children: [Text('Hello, Flutter!'), Text('Everything is a widget.')],
    );
  }
}
