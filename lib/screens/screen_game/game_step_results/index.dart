import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradus/components/button_outline.dart';
import 'package:gradus/components/wrapper_screens.dart';
import 'package:gradus/constants.dart';
import 'components/player_item.dart';
import 'components/screen_top.dart';

class GameStepResult extends StatelessWidget {
  const GameStepResult({Key? key}) : super(key: key);

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
              ScreenTop(),
              Spacer(),
              PlayerItem(
                title: 'Жареная селёдка',
                colorIcon: gOrangeColor,
                colorBody: gBlueColor,
                icon: SvgPicture.asset('assets/icons/player-avatar-1.svg'),
                litres: '1750 мл',
                isWinner: true,
              ),
              PlayerItem(
                title: 'Жареная селёдка',
                colorIcon: gOrangeColor,
                colorBody: gBlueColor,
                icon: SvgPicture.asset('assets/icons/player-avatar-1.svg'),
                litres: '200 мл',
                isWinner: false,
              ),
              PlayerItem(
                title: 'Жареная селёдка',
                colorIcon: gOrangeColor,
                colorBody: gBlueColor,
                icon: SvgPicture.asset('assets/icons/player-avatar-1.svg'),
                litres: '2 мл',
                isWinner: false,
              ),
              Spacer(),
              ButtonOutline(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/arrow-back-button.svg'),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'вернуться'.toUpperCase(),
                      style: const TextStyle(
                        fontFamily: gFontNunBold,
                        fontSize: 16.0,
                        color: gWhiteColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
