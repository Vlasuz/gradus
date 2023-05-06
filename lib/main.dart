import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradus/screens/screen_alcocalculate/index.dart';
import 'package:gradus/screens/screen_alcocalculate_done/index.dart';
import 'package:gradus/screens/screen_decks/index.dart';
import 'package:gradus/screens/screen_game/game_step_1/index.dart';
import 'package:gradus/screens/screen_game/game_step_2/index.dart';
import 'package:gradus/screens/screen_game/game_step_end/index.dart';
import 'package:gradus/screens/screen_game/game_step_looser/index.dart';
import 'package:gradus/screens/screen_game/game_step_menu/index.dart';
import 'package:gradus/screens/screen_game/game_step_results/index.dart';
import 'package:gradus/screens/screen_game/game_step_winner/index.dart';
import 'package:gradus/screens/screen_rules/index.dart';
import 'package:gradus/screens/screen_start/index.dart';
import 'package:gradus/screens/screen_start_cards/index.dart';
import 'package:gradus/screens/screen_start_info/index.dart';
import 'package:gradus/screens/screen_start_players/index.dart';
import 'package:gradus/states.dart';
import 'package:flutter/services.dart';

import 'helpers/languages.dart';


void main() async {
  runApp(MyApp());
  lang();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        '/game-step-1': (context) => GameStep1(),
        '/game-step-2': (context) => GameStep2(),
        '/game-step-menu': (context) => GameStepMenu(),
        '/game-step-winner': (context) => GameStepWinner(),
        '/game-step-looser': (context) => GameStepLooser(),
        '/game-step-result': (context) => GameStepResult(),
        '/game-step-end': (context) => GameStepEnd(),
      },
    );
  }
}
