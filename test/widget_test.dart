import 'package:flutter_test/flutter_test.dart';
import 'package:wisata_candi/main.dart';

void main() {
  testWidgets('Menampilkan halaman utama wisata candi', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Wisata Candi'), findsOneWidget);
    expect(find.text('Candi Borobudur'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Favorite'), findsOneWidget);
  });
}
