import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart'; // ✅ FIXED import path

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Live XRP Price (MYR)'), findsOneWidget);
  });
}
