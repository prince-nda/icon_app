import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:icon_app/main.dart';

void main() {
  testWidgets('Heart icon toggles when tapped', (WidgetTester tester) async {
    await tester.pumpWidget(const IconDemoApp());

    // Starts as the empty (outline) heart
    expect(find.byIcon(Icons.favorite_border), findsOneWidget);

    // Tap the heart button
    await tester.tap(find.byType(IconButton));
    await tester.pump();

    // Now the heart is filled
    expect(find.byIcon(Icons.favorite), findsWidgets);
  });
}