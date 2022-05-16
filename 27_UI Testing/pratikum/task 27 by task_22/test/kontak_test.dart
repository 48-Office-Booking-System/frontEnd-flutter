import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:task_22/kontak.dart';

void main() {
  testWidgets('Jawaban halaman harus kontak', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Kontak(),
    ));
    expect(find.text('Kontak'), findsOneWidget);
  });
}
