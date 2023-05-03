import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/components/button_green.dart';
import 'package:gradus/components/button_outline.dart';
import 'package:gradus/components/wrapper_screens.dart';
import 'package:gradus/constants.dart';
import '../components/player_item.dart';
import 'components/buttons_done_or_not.dart';
import 'components/screen_top.dart';

class GameStep2 extends StatefulWidget {
  const GameStep2({Key? key}) : super(key: key);

  @override
  State<GameStep2> createState() => _GameStep2State();
}

class _GameStep2State extends State<GameStep2> {
  bool _isHaveMenu = false;

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
              SizedBox(
                height: 18.0,
              ),
              PlayerItem(
                title: 'Маленький перчик',
                colorIcon: gGreenColor,
                colorBody: gOrangeColor,
                icon: SvgPicture.asset('assets/icons/player-avatar-1.svg'),
              ),
              SizedBox(
                height: 36.0,
              ),
              Image.asset('assets/images/game_cards/card_coloda1_card1.png', height: MediaQuery.of(context).size.height / 2.5,),
              Spacer(),
              !_isHaveMenu
                  ? ButtonsDoneOrNot()
                  : ButtonGreen(
                      text: 'Использовать меню',
                      onPressed: () {
                        Navigator.pushNamed(context, '/game-step-menu');
                      },
                    ),
              SizedBox(
                height: 20.0,
              ),
              !_isHaveMenu
                  ? FreeMenu()
                  : ButtonOutline(
                      onPressed: () {
                        Navigator.pushNamed(context, '/game-step-result');
                      },
                      child: Text(
                        'Кто самый пьяненький'.toUpperCase(),
                        style: TextStyle(
                          fontFamily: gFontNunBold,
                          fontSize: 16.0,
                          color: gWhiteColor,
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

class FreeMenu extends StatelessWidget {
  const FreeMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ButtonOutline(
          onPressed: () {
            Navigator.pushNamed(context, '/game-step-menu');
          },
          child: Text(
            'Использовать Меню'.toUpperCase(),
            style: TextStyle(
                color: gWhiteColor, fontSize: 16.0, fontFamily: gFontNunBlack),
          ),
        ),
        Positioned.fill(
          bottom: -55.0,
          child: Center(
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(1 / -40),
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    color: Color(0xFFFFF275),
                    borderRadius: BorderRadius.circular(37.0)),
                child: Text(
                  'Халява'.toUpperCase(),
                  style: TextStyle(
                      color: gMainColor,
                      fontFamily: gFontNunBlack,
                      fontSize: 10.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
