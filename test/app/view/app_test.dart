import 'package:bank_template/presentations/my_app.dart';
import 'package:bank_template/presentations/pages/home/home_shelf.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const MyApp());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
