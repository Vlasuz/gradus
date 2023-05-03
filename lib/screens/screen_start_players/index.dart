import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/components/button_green.dart';
import 'package:gradus/components/button_orange.dart';
import 'package:gradus/components/button_outline.dart';
import 'package:gradus/constants.dart';

import '../../components/wrapper_screens.dart';
import 'components/player_item.dart';
import 'components/screen_top.dart';

import '../../states.dart';

class ScreenStartPlayers extends StatefulWidget {
  ScreenStartPlayers({Key? key}) : super(key: key);

  @override
  State<ScreenStartPlayers> createState() => _ScreenStartPlayersState();
}

class _ScreenStartPlayersState extends State<ScreenStartPlayers> {
  var _numOfPlayers = 2;
  ScrollController _scrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {

    final List<Widget> players = [];
    for(int i = 1; i <= _numOfPlayers; i++) {
      var playerData = allPlayers[i-1];
      var widget = PlayerItem(
        id: '$i',
        title: playerData.title,
        colorIcon: playerData.colorIcon,
        colorBody: playerData.colorBody,
        icon: playerData.icon,
      );
      players.add(widget);
    }

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
              Image.asset('assets/images/logo.png'),
              const Spacer(),
              const SizedBox(
                width: 310.0,
                child: Text(
                  "Добавь игроков в соответствии с реальным размещением, игра идёт по часовой стрелке",
                  style: TextStyle(
                      fontFamily: gFontRobReg, fontSize: 16.0, height: 1.5),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height - 600,
                ),
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: players,
                  ),
                ),
              ),
              const Spacer(),
              const SizedBox(height: 20.0,),
              _numOfPlayers > 2 ? ButtonOrange(text: 'Убрать игрока', onPressed: (){
                setState(() {
                  if(_numOfPlayers > 2) {
                    _numOfPlayers--;
                  }
                });
              }) : const SizedBox(height: 0,),
              const SizedBox(height: 20.0,),
              ButtonOutline(
                onPressed: () {
                  setState(() {
                    if(_numOfPlayers < allPlayers.length) {
                      _numOfPlayers++;
                    }
                    // _scrollController.animateTo(
                    //   _scrollController.position.maxScrollExtent,
                    //   curve: Curves.easeOut,
                    //   duration: const Duration(milliseconds: 300),
                    // );
                    Future.delayed(Duration(milliseconds: 50)).asStream().listen((event) {
                      _scrollController.animateTo(
                        _scrollController.position.maxScrollExtent,
                        curve: Curves.easeOut,
                        duration: const Duration(milliseconds: 300),
                      );
                    });
                  });
                },
                child: Text('Добавить игрока'.toUpperCase(), style: const TextStyle(fontFamily: gFontNunBold, color: gWhiteColor, fontSize: 16.0),),
              ),
              const SizedBox(height: 20.0,),
              ButtonGreen(text: "Продолжить", onPressed: () {
                Navigator.pushNamed(context, '/start-info');
              })
            ],
          ),
        ),
      ),
    );
  }
}
