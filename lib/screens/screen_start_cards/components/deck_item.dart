import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradus/screens/screen_start_cards/components/switcher_custom.dart';

import '../../../constants.dart';

class DeckItem extends StatelessWidget {
  const DeckItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width - 60,
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
          color: gWhiteColor, borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.0),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 4.0),
                      color: gMainColor.withOpacity(0.15),
                      blurRadius: 4.0)
                ]),
            child: Image.asset('assets/images/card-back-side.png'),
          ),
          const SizedBox(
            width: 30.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Двигай телом',
                        style: TextStyle(
                            color: gMainColor,
                            fontFamily: gFontNunBold,
                            fontSize: 16.0),
                      ),
                      SvgPicture.asset('assets/icons/question-blue.svg')
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '1,59 \$',
                      style: TextStyle(
                          color: gGreenColor,
                          fontFamily: gFontNunBlack,
                          fontSize: 24.0),
                    ),
                    SwitchCustom()
                  ],
                ),
                SizedBox(height: 15.0,),
                RichText(
                  text: const TextSpan(
                      text: "Пробная ",
                      style: TextStyle(color: Color(0xFF808080)),
                      children: <TextSpan>[
                        TextSpan(
                            text: "– 15 карт",
                            style: TextStyle(
                                color: gMainColor, fontWeight: FontWeight.bold))
                      ]),
                ),
                RichText(
                  text: const TextSpan(
                      text: "Полная ",
                      style: TextStyle(color: Color(0xFF808080)),
                      children: <TextSpan>[
                        TextSpan(
                            text: "– 60 карт ",
                            style: TextStyle(
                                color: gMainColor,
                                fontWeight: FontWeight.bold)),
                      ]),
                ),
                // Text(
                //   "+ отключение рекламы на месяц",
                //   style:
                //       TextStyle(color: gMainColor, fontWeight: FontWeight.bold),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
