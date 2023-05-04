import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradus/states.dart';

import '../../../components/button_green.dart';
import '../../../components/button_orange.dart';
import '../../../components/button_outline.dart';
import '../../../constants.dart';

class MainButtons extends StatefulWidget {
  const MainButtons({
    super.key,
  });

  @override
  State<MainButtons> createState() => _MainButtonsState();
}

class _MainButtonsState extends State<MainButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: [
          ButtonGreen(
            text: language.isEmpty ? '' : language['start_game'],
            onPressed: () {
              Navigator.pushNamed(context, '/start-players');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonOrange(
            text: language.isEmpty ? '' : language['add_cards'],
            onPressed: () {
              Navigator.pushNamed(context, '/decks');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonOutline(
            child: Text(
              language.isEmpty ? '' : language['rules']?.toUpperCase(),
              style: const TextStyle(
                color: gWhiteColor,
                fontFamily: gFontNunBold,
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/rules');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonOutline(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/speed-meter.svg'),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  language.isEmpty ? '' : language['alco_calculate']?.toUpperCase(),
                  style: const TextStyle(
                    color: gWhiteColor,
                    fontFamily: gFontNunBold,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onPressed: () {
              calculateWeight = '';
              calculateHeight = '';
              calculateDrinkPercent1 = '';
              calculateDrinkMl1 = '';
              isButtonClickCalculate = false;
              Navigator.pushNamed(context, '/alco-calculate');
            },
          ),
        ],
      ),
    );
  }
}
