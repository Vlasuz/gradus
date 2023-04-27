import 'package:flutter/material.dart';
import 'package:gradus/constatns.dart';
import '../../components/button_outline.dart';
import '../../components/wrapper_screens.dart';
import 'components/main_buttons.dart';
import 'components/top_buttons.dart';

class ScreenMain extends StatelessWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gMainColor,
      body: WrapperScreens(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
          child: Column(
            children: [
              TopButtons(),
              SizedBox(height: 6.0,),
              Image.asset('assets/images/logo.png'),
              Spacer(),
              MainButtons(),
              Spacer(),
              ButtonOutline(
                child: Text(
                  "Залишити відгук".toUpperCase(),
                  style: const TextStyle(
                    color: gWhiteColor,
                    fontFamily: gFontNunBold,
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  print('Review');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
