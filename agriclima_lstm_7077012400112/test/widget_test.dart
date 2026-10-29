import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

import 'package:agriclima_lstm_7077012400112/main.dart';
import 'package:agriclima_lstm_7077012400112/state/app_state.dart';

void main() {
  testWidgets('menampilkan halaman beranda Agriclima', (tester) async {
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (_) => AppState(),
        child: const AgriClimaApp(),
      ),
    );

    expect(find.text('AgriClima - Beranda'), findsOneWidget);
    expect(find.text('Selamat datang di AgriClima LSTM'), findsOneWidget);
    expect(find.text('Prediksi'), findsOneWidget);
    expect(find.text('Statistik'), findsOneWidget);
    expect(find.text('Pengaturan'), findsOneWidget);
  });
}
