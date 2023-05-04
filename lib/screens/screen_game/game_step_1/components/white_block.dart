import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradus/constants.dart';

import '../../components/player_item.dart';

class WhiteBlock extends StatelessWidget {
  const WhiteBlock({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 60,
      padding: EdgeInsets.only(top: 30.0, bottom: 60.0),
      decoration: BoxDecoration(
          color: gWhiteColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: Center(
        child: Column(
          children: [
            PlayerItem(
              title: 'Маленький перчик',
              colorIcon: Color(0xFFfb4010),
              colorBody: Color(0xFF040f45),
              icon: SvgPicture.asset(
                  'assets/icons/player-avatar-2.svg'),
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(
              'Место № 0 ',
              style: TextStyle(
                fontFamily: gFontNunBlack,
                color: gMainColor,
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Выпито:',
              style: TextStyle(
                fontFamily: gFontRobReg,
                color: gMainColor.withOpacity(0.5),
                fontSize: 16.0,
              ),
            ),
            Text(
              'Трезвый как стеклышко',
              style: TextStyle(
                  fontFamily: gFontRobBold,
                  color: gMainColor,
                  fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
