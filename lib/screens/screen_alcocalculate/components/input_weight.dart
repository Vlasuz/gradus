import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../states.dart';
import 'custom_input.dart';

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
              CustomInput(
                width: 124.0,
                onChanged: (text) {
                  calculateWeight = text;
                },
              ),
              const SizedBox(
                width: 5.0,
              ),
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
