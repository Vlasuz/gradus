import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/components/button_green.dart';
import 'package:gradus/components/wrapper_screens.dart';
import 'package:gradus/constants.dart';
import 'package:gradus/helpers/navigator.dart';
import 'package:gradus/screens/screen_game/components/player_item.dart';
import 'components/screen_top.dart';

class GameStepWinner extends StatelessWidget {
  const GameStepWinner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gMainColor,
      body: WrapperScreens(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            margin: const EdgeInsets.only(top: 60.0, bottom: 40.0),
            child: Column(
              children: [
                const ScreenTop(),
                const SizedBox(
                  height: 18.0,
                ),
                PlayerItem(
                  title: 'title',
                  colorIcon: gOrangeColor,
                  colorBody: gGreenColor,
                  icon: SvgPicture.asset('assets/icons/player-avatar-1.svg'),
                ),
                const SizedBox(height: 28.0),
                Container(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20.0, right: 20.0, bottom: 17.0),
                  width: MediaQuery.of(context).size.width - 60,
                  decoration: BoxDecoration(
                    color: gWhiteColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/image-winner.png', height: MediaQuery.of(context).size.height / 5,),
                      const SizedBox(
                        height: 2.0,
                      ),
                      const Text(
                        'Ты красаучег!',
                        style: TextStyle(
                          color: gMainColor,
                          fontSize: 36.0,
                          fontFamily: gFontNunBlack,
                        ),
                      ),
                      const SizedBox(
                        height: 2.0,
                      ),
                      Container(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                        decoration: BoxDecoration(
                            color: gMainColor,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: "+ 50",
                              style: TextStyle(
                                fontFamily: gFontNunBlack,
                                fontSize: 20.0,
                              ),
                            ),
                            TextSpan(
                              text: " баллов",
                              style: TextStyle(
                                fontFamily: gFontNunReg,
                                fontSize: 20.0,
                              ),
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Ты на',
                        style: TextStyle(
                            color: gMainColor.withOpacity(0.5),
                            fontFamily: gFontRobReg,
                            fontSize: 14.0),
                      ),
                      const Text(
                        '1 месте',
                        style: TextStyle(
                            color: gMainColor,
                            fontFamily: gFontNunBold,
                            fontSize: 20.0),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        width: 240.0,
                        child: const Text(
                          'Можешь пропить баллы и поиздеваться над игроками',
                          style: TextStyle(
                              color: gMainColor,
                              fontFamily: gFontRobReg,
                              fontSize: 20.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                // const Spacer(),
                SizedBox(height: 40.0,),
                ButtonGreen(
                    text: 'завершить ход'.toUpperCase(),
                    onPressed: () {
                      navigator(context, '/game-step-end');
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
