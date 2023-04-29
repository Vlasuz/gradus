import 'package:flutter/material.dart';
import 'package:gradus/components/button_green.dart';

import '../../components/wrapper_screens.dart';
import '../../constants.dart';
import '../../states.dart';
import 'components/divider_custom.dart';
import 'components/drinking_item.dart';
import 'components/input_height.dart';
import 'components/input_weight.dart';
import 'components/screen_top.dart';
import 'components/switch_hungry.dart';
import 'components/switch_sex.dart';

class ScreenAlcoCalculate extends StatefulWidget {
  const ScreenAlcoCalculate({Key? key}) : super(key: key);

  @override
  State<ScreenAlcoCalculate> createState() => _ScreenAlcoCalculateState();
}

class _ScreenAlcoCalculateState extends State<ScreenAlcoCalculate> {
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
              Container(
                margin: EdgeInsets.only(top: 20.0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: gWhiteColor,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Column(
                  children: const [
                    SwitchSex(),
                    DividerCustom(),
                    InputWeight(),
                    SizedBox(
                      height: 20.0,
                    ),
                    InputHeight(),
                    DividerCustom(),
                    DrinkItem(
                      numberItem: '1',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    DrinkItem(
                      numberItem: '2',
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    DrinkItem(
                      numberItem: '3',
                    ),
                    DividerCustom(),
                    SwitchHungry(),
                  ],
                ),
              ),
              Spacer(),
              ButtonGreen(
                  text: "Расчитать",
                  onPressed: () {
                    if(calculateWeight.length > 0 && calculateHeight.length > 0 && calculateDrinkPercent1.length > 0 && calculateDrinkMl1.length > 0) {
                      Navigator.pushNamed(context, '/alco-calculate-done');
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
