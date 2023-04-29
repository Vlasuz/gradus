import 'package:flutter/material.dart';
import 'package:gradus/screens/screen_alcocalculate/index.dart';
import 'package:gradus/screens/screen_alcocalculate_done/index.dart';
import 'package:gradus/screens/screen_decks/index.dart';
import 'package:gradus/screens/screen_rules/index.dart';
import 'package:gradus/screens/screen_start/index.dart';
import 'package:gradus/screens/screen_start_cards/index.dart';
import 'package:gradus/screens/screen_start_info/index.dart';
import 'package:gradus/screens/screen_start_players/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        // useMaterial3: true,
        // colorSchemeSeed: const Color(0xff00A878),
      ),
      initialRoute: '/start',
      routes: {
        '/rules': (context) => const ScreenRules(),
        '/decks': (context) => const ScreenDecks(),
        '/alco-calculate': (context) => const ScreenAlcoCalculate(),
        '/alco-calculate-done': (context) => const ScreenAlcoCalculateDone(),
        '/start': (context) => const ScreenMain(),
        '/start-players': (context) => ScreenStartPlayers(),
        '/start-info': (context) => ScreenStartInfo(),
        '/start-cards': (context) => ScreenStartCards(),
      },
    );
  }
}
