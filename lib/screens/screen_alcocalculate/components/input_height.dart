import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../states.dart';

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
              Container(
                width: 124.0,
                padding:
                const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(27.0),
                  border: Border.all(
                    width: 1.0,
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                child: TextField(
                  onChanged: (text) {
                    calculateHeight = text;
                  },
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(color: gMainColor),
                ),
              ),
              const SizedBox(width: 5.0,),
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
