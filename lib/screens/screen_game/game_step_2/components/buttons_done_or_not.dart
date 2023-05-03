import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ButtonsDoneOrNot extends StatelessWidget {
  const ButtonsDoneOrNot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/game-step-looser');
          },
          style: TextButton.styleFrom(foregroundColor: gMainColor, padding: EdgeInsets.zero),
          child: Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                color: Color(0xFFFF3C38),
                borderRadius: BorderRadius.circular(50.0)),
            child: Center(
              child: Text(
                'Сдаюсь'.toUpperCase(),
                style: TextStyle(
                  fontFamily: gFontNunBold,
                  color: gWhiteColor,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/game-step-winner');
          },
          style: TextButton.styleFrom(foregroundColor: gMainColor, padding: EdgeInsets.zero),
          child: Container(
            height: 60.0,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                color: Color(0xFF00A878),
                borderRadius: BorderRadius.circular(50.0)),
            child: Center(
              child: Text(
                'Готово'.toUpperCase(),
                style: TextStyle(
                  fontFamily: gFontNunBlack,
                  color: gWhiteColor,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
