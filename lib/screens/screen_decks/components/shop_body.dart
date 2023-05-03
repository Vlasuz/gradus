import 'package:flutter/material.dart';
import 'deck_item.dart';
import 'screen_top.dart';

class ShopBody extends StatelessWidget {
  const ShopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
