import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/constants.dart';
import 'package:gradus/helpers/languages.dart';
import 'package:gradus/states.dart';
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
  // bool isOpenSettings = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gMainColor,
      body: WrapperScreens(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 40.0, bottom: 40.0),
              child: Column(
                children: [
                  TopButtons(isSettingsOpen: () {
                    setState(() {
                      isOpenSettings = true;
                    });
                  },),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Image.asset('assets/images/logo.png'),
                  const Spacer(),
                  const MainButtons(),
                  const Spacer(),
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
            isOpenSettings ? Positioned(
              child: SettingsWindow(
                  onPressed: () {
                    setState(() {
                      isOpenSettings = false;
                    });
                  }
              ),
            ) : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
