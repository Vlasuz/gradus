import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../states.dart';

class DrinkItem extends StatelessWidget {
  const DrinkItem({
    super.key,
    required this.numberItem,
  });

  final String numberItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 105.0,
          child: Text(
            'Напиток №$numberItem:',
            style: TextStyle(
              color: gMainColor,
              fontFamily: gFontRobReg,
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
                padding:
                EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.0),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                child: TextField(
                  onChanged: (text) {
                    if(numberItem == '1') {
                      calculateDrinkPercent1 = text;
                    } else if(numberItem == '2') {
                      calculateDrinkPercent2 = text;
                    } else if(numberItem == '3') {
                      calculateDrinkPercent3 = text;
                    }
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: gMainColor),
                ),
              ),
              SizedBox(width: 5.0,),
              Text(
                '%',
                style: TextStyle(color: gMainColor),
              )
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 4,
                padding:
                EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.0),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                child: TextField(
                  onChanged: (text) {
                    if(numberItem == '1') {
                      calculateDrinkMl1 = text;
                    } else if(numberItem == '2') {
                      calculateDrinkMl2 = text;
                    } else if(numberItem == '3') {
                      calculateDrinkMl3 = text;
                    }
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: gMainColor),
                ),
              ),
              SizedBox(width: 5.0,),
              Text(
                'мл',
                style: TextStyle(color: gMainColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
