import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:gradus/constants.dart';

class SwitchCustom extends StatefulWidget {
  SwitchCustom({Key? key}) : super(key: key);

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  bool switcherTurn = true;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: switcherTurn,
      width: 47.0,
      height: 26.0,
      toggleSize: 20.0,
      borderRadius: 30.0,
      padding: 2.0,
      toggleColor: gWhiteColor,
      switchBorder: Border.all(
        color: Color(0xFFE6EFE9),
        width: 1.0,
      ),
      activeColor: gGreenColor,
      inactiveColor: Color(0xFFCCCCCC),
      onToggle: (val) {
        setState(() {
          switcherTurn = val;
        });
      },
    );
  }
}