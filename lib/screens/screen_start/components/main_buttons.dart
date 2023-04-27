import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/button_green.dart';
import '../../../components/button_orange.dart';
import '../../../components/button_outline.dart';
import '../../../constatns.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30.0),
      child: Column(
        children: [
          ButtonGreen(
            text: "Почати гру",
            onPressed: () {
              Navigator.pushNamed(context, '/start-players');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonOrange(
            text: "Додати карти",
            onPressed: () {
              print('Add cards');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          ButtonOutline(
            child: Text(
              "Правила".toUpperCase(),
              style: const TextStyle(
                color: gWhiteColor,
                fontFamily: gFontNunBold,
                fontSize: 16.0,
              ),
            ),
            onPressed: () {
              print('Rules');
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
                  "Алкокалькулятор".toUpperCase(),
                  style: const TextStyle(
                    color: gWhiteColor,
                    fontFamily: gFontNunBold,
                    fontSize: 16.0,
                  ),
                )
              ],
            ),
            onPressed: () {
              print('Calculator');
            },
          ),
        ],
      ),
    );
  }
}
