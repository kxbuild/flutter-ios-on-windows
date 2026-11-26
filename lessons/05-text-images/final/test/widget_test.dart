import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_basics/main.dart';

void main() {
  testWidgets('GreetingCard shows the greeting', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: GreetingCard()));

    expect(find.text('Hello, Flutter!'), findsOneWidget);
  });
}
