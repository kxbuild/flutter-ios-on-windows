import 'package:flutter/material.dart';

// Practice image for tutorials, served by kxbuild.net.
const bannerUrl =
    'https://www.kxbuild.net/static/tutorial/images/kxbuild-banner.png';

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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.wb_sunny, size: 48, color: Colors.orange),
        const Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.teal,
          ),
        ),
        const Text(
          'Everything is a widget.',
          style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
        ),
        Image.asset('assets/images/sunrise.png', width: 240),
        Image.network(
          bannerUrl,
          width: 240,
          height: 120,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.broken_image, size: 48),
        ),
      ],
    );
  }
}
