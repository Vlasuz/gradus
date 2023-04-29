import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../states.dart';

class InputWeight extends StatelessWidget {
  const InputWeight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 105.0,
          child: const Text(
            'Масса тела:',
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
                width: 124.0,
                padding:
                const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.0),
                  border: Border.all(
                    width: 1.0,
                    color: Color(0xFFD9D9D9),
                  ),
                ),
                child: TextField(
                  onChanged: (text) {
                    calculateWeight = text;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: gMainColor),
                ),
              ),
              const SizedBox(width: 5.0,),
              const Text(
                'кг',
                style: TextStyle(color: gMainColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
