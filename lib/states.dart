import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ModelPlayers {
  final String title;
  final Color colorIcon;
  final Color colorBody;
  final SvgPicture icon;

  ModelPlayers(
    this.title,
    this.colorIcon,
    this.colorBody,
    this.icon
  );
}
final List<ModelPlayers> allPlayers = [
  ModelPlayers(
    'Жареная селёдка',
    Color(0xFFFFF275),
    Color(0xFF005BBB),
    SvgPicture.asset('assets/icons/player-avatar-1.svg'),
  ),
  ModelPlayers(
    'Малосольный огурец',
    Color(0xFFFF3C38),
    Color(0xFF7E97A6),
    SvgPicture.asset('assets/icons/player-avatar-2.svg'),
  ),
  ModelPlayers(
    'Малосольный огурец',
    Color(0xFFC879FF),
    Color(0xFFC70A80),
    SvgPicture.asset('assets/icons/player-avatar-1.svg'),
  ),
  ModelPlayers(
    'Малосольный огурец',
    Color(0xFF34f23a),
    Color(0xFF9aa083),
    SvgPicture.asset('assets/icons/player-avatar-2.svg'),
  ),
  ModelPlayers(
    'Жареная селёдка',
    Color(0xFFFFF275),
    Color(0xFF005BBB),
    SvgPicture.asset('assets/icons/player-avatar-1.svg'),
  ),
  ModelPlayers(
    'Малосольный огурец',
    Color(0xFFFF3C38),
    Color(0xFF7E97A6),
    SvgPicture.asset('assets/icons/player-avatar-2.svg'),
  ),
  ModelPlayers(
    'Малосольный огурец',
    Color(0xFFC879FF),
    Color(0xFFC70A80),
    SvgPicture.asset('assets/icons/player-avatar-1.svg'),
  ),
  ModelPlayers(
    'Малосольный огурец',
    Color(0xFF34f23a),
    Color(0xFF9aa083),
    SvgPicture.asset('assets/icons/player-avatar-2.svg'),
  ),
];


Map language = {};
String languageCode = 'ua';


bool isButtonClickCalculate = false;
bool calculateSex = false;
bool calculateStomach = false;
double calculateSum = 0.0;
String calculateWeight = '';
String calculateHeight = '';
String calculateDrinkPercent1 = '';
String calculateDrinkMl1 = '';
String calculateDrinkPercent2 = '0';
String calculateDrinkMl2 = '0';
String calculateDrinkPercent3 = '0';
String calculateDrinkMl3 = '0';

bool isOpenQuestion = false;

bool isOpenSettings = false;
bool isTurnVolume = true;
bool isTurnAutoShuffling = true;
