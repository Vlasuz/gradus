import 'package:flutter/material.dart';
import 'package:gradus/components/modal_wrapper.dart';
import 'package:gradus/states.dart';

import '../../components/wrapper_screens.dart';
import '../../constants.dart';
import 'components/deck_item.dart';
import 'components/screen_top.dart';
import 'components/shop_body.dart';

class ScreenDecks extends StatefulWidget {
  const ScreenDecks({Key? key}) : super(key: key);

  @override
  State<ScreenDecks> createState() => _ScreenDecksState();
}

class _ScreenDecksState extends State<ScreenDecks> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: gMainColor,
      body: WrapperScreens(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 60.0, bottom: 40.0),
          child: Stack(
            children: [
              ShopBody(),
              isOpenQuestionTop ? Positioned(
                child: ModalWrapper(
                  onPressed: (){
                    setState(() {
                      isOpenQuestionTop = false;
                    });
                  },
                  innerWidget: [
                    Text(
                      'Для активации данной колоды необходимо ввести промо-код, который можно найти в печатной версии игры',
                      style: TextStyle(color: gMainColor),
                    )
                  ],
                ),
              ) : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
