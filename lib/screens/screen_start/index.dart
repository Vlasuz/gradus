import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/constants.dart';
import '../../components/button_outline.dart';
import '../../components/wrapper_screens.dart';
import 'components/main_buttons.dart';
import 'components/settings/index.dart';
import 'components/top_buttons.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  bool _isSettingsOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gMainColor,
      body: WrapperScreens(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 40.0, bottom: 40.0),
              child: Column(
                children: [
                  TopButtons(isSettingsOpen: () {
                    setState(() {
                      _isSettingsOpen = true;
                    });
                  },),
                  SizedBox(
                    height: 6.0,
                  ),
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
            _isSettingsOpen ? Positioned(
              child: SettingsWindow(
                  onPressed: () {
                    print('asd');
                    setState(() {
                      _isSettingsOpen = false;
                    });
                  }
              ),
            ) : SizedBox(),
          ],
        ),
      ),
    );
  }
}
