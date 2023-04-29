import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/button_green.dart';
import 'components/text_widget.dart';

class ScreenRules extends StatelessWidget {
  const ScreenRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gMainColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png'),
          Container(
            height: 461.0,
            margin: EdgeInsets.only(top: 50.0, bottom: 100.0),
            child: TextWidget(),
          ),
          ButtonGreen(
            text: 'Понятненько',
            onPressed: () {
              // Navigator.pushNamed(context, '/start');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
