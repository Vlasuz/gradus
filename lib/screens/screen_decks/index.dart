import 'package:flutter/material.dart';

import '../../components/wrapper_screens.dart';
import '../../constants.dart';
import 'components/deck_item.dart';
import 'components/screen_top.dart';

class ScreenDecks extends StatelessWidget {
  const ScreenDecks({Key? key}) : super(key: key);

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
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height - 160
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                      DeckItem(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

