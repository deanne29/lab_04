
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('Order Summary displays correct order details',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(),
      ),
    );

    expect(find.text('Your Order'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Quantity: 1'), findsOneWidget);
    expect(find.text('RM25.00'), findsOneWidget);
    expect(find.text('Back'), findsOneWidget);
  });

  testWidgets('Back button returns to previous screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const OrderSummaryScreen(),
                  ),
                );
              },
              child: const Text('Open Summary'),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Open Summary'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('Back'));
    await tester.pumpAndSettle();

    expect(find.text('Open Summary'), findsOneWidget);
  });
}
