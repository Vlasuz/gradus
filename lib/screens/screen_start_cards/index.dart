import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/button_green.dart';
import '../../components/wrapper_screens.dart';
import '../../constatns.dart';
import 'components/deck_item.dart';
import 'components/screen_top.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'components/switcher_custom.dart';

class ScreenStartCards extends StatelessWidget {
  const ScreenStartCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gMainColor,
      body: WrapperScreens(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Column(
            children: [
              const ScreenTop(),
              const SizedBox(
                height: 6.0,
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                'Выбери колоды:',
                style: TextStyle(fontFamily: gFontNunBlack, fontSize: 20.0),
              ),
              const Spacer(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 600.0
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              ButtonGreen(
                  text: "Понеслась",
                  onPressed: () {
                    // Navigator.pushNamed(context, '/start-cards');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
