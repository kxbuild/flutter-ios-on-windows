import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:layouts/main.dart';

void main() {
  testWidgets('ProfileHeader shows the name and stats', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: ProfileHeader())),
    );

    expect(find.text('Ada Lovelace'), findsOneWidget);
    expect(find.text('Followers'), findsOneWidget);
  });
}
