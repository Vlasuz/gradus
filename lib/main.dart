import 'package:flutter/material.dart';
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
        useMaterial3: true,
        colorSchemeSeed: const Color(0xff00A878),
      ),
      routes: {
        '/': (context) => const ScreenRules(),
        '/start': (context) => const ScreenMain(),
        '/start-players': (context) => ScreenStartPlayers(),
        '/start-info': (context) => ScreenStartInfo(),
        '/start-cards': (context) => ScreenStartCards(),
      },
    );
  }
}
