import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../states.dart';
import 'custom_input.dart';

class InputHeight extends StatelessWidget {
  const InputHeight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 105.0,
          child: const Text(
            'Рост:',
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
                  calculateHeight = text;
                },
              ),
              const SizedBox(
                width: 5.0,
              ),
              const Text(
                'см',
                style: TextStyle(color: gMainColor),
              )
            ],
          ),
        )
      ],
    );
  }
}
