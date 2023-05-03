import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/constants.dart';

class ScreenTop extends StatelessWidget {
  const ScreenTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 45.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 18.0,),
          Text(
            'Результаты',
            style: TextStyle(
              fontFamily: gFontNunBold,
              fontSize: 20.0,
            ),
          ),
          SvgPicture.asset('assets/icons/question.svg')
        ],
      ),
    );
  }
}
