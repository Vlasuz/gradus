import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradus/components/button_green.dart';
import 'package:gradus/components/wrapper_screens.dart';
import 'package:gradus/constants.dart';
import '../components/player_item.dart';
import 'components/screen_top.dart';

class GameStepLooser extends StatelessWidget {
  const GameStepLooser({Key? key}) : super(key: key);

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
              SizedBox(height: 18.0),
              PlayerItem(
                title: 'title',
                colorIcon: gOrangeColor,
                colorBody: gGreenColor,
                icon: SvgPicture.asset('assets/icons/player-avatar-1.svg'),
              ),
              SizedBox(height: 28.0),
              Container(
                padding: EdgeInsets.only(
                    top: 10.0, left: 20.0, right: 20.0, bottom: 17.0),
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    color: gWhiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: [
                    Image.asset('assets/images/image-looser.png'),
                    SizedBox(height: 10.0),
                    Text(
                      'ну не повезло',
                      style: TextStyle(
                          color: gMainColor,
                          fontFamily: gFontRobReg,
                          fontSize: 20.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Хлопни штрафную!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: gMainColor,
                        fontSize: 36.0,
                        fontFamily: gFontNunBlack,
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Ты на',
                      style: TextStyle(
                          color: gMainColor.withOpacity(0.5),
                          fontFamily: gFontRobReg,
                          fontSize: 14.0),
                    ),
                    Text(
                      '10 месте',
                      style: TextStyle(
                          color: gMainColor,
                          fontFamily: gFontNunBold,
                          fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
              Spacer(),
              ButtonGreen(text: 'завершить ход'.toUpperCase(), onPressed: () {
                Navigator.pushNamed(context, '/game-step-1');
              })
            ],
          ),
        ),
      ),
    );
  }
}
