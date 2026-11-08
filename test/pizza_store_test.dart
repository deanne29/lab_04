
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/main.dart';

void main() {
  testWidgets('Menu screen displays all three items',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Fries'), findsOneWidget);
  });

  testWidgets('Vegetable Pizza button opens its screen',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    expect(find.text('A delicious pizza topped with fresh vegetables, '
        'including tomatoes, capsicum, onions and mushrooms.'),
        findsOneWidget);
  });

  testWidgets('Cheese Pizza and Fries buttons open their screens',
      (WidgetTester tester) async {
    await tester.pumpWidget(const PizzaStoreApp());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    expect(find.text('A tasty pizza loaded with delicious melted cheese '
        'for all cheese lovers.'), findsOneWidget);

    await tester.pageBack();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Fries'));
    await tester.pumpAndSettle();

    expect(find.text('Crispy golden fries, freshly prepared '
        'and perfect for sharing.'), findsOneWidget);
  });
}
