import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradus/components/modal_wrapper.dart';

import '../../../../constants.dart';
import 'components/divider_custom.dart';
import 'components/switcher_custom.dart';

const List<String> list = <String>['ua', 'ru'];

Map<String, String> langCode() => {
      'ua': 'assets/icons/flag-ua.svg',
      'ru': 'assets/icons/flag-en.svg',
    };

class SettingsWindow extends StatefulWidget {
  const SettingsWindow({
    super.key,
    this.onPressed,
  });

  final dynamic onPressed;

  @override
  State<SettingsWindow> createState() => _SettingsWindowState();
}

class _SettingsWindowState extends State<SettingsWindow> {
  String dropdownValue = languageCode;

  @override
  Widget build(BuildContext context) {
    return ModalWrapper(
      innerWidget: [
        const Text(
          'Настройки',
          style: TextStyle(
            color: gMainColor,
            fontSize: 16.0,
            fontFamily: gFontNunBold,
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Звук',
              style: TextStyle(
                color: gMainColor,
                fontFamily: gFontRobReg,
                fontSize: 16.0,
              ),
            ),
            SwitchCustom()
          ],
        ),
        const DividerCustom(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Автоперемешивание \nкарт',
              style: TextStyle(
                color: gMainColor,
                fontFamily: gFontRobReg,
                fontSize: 16.0,
              ),
            ),
            SwitchCustom()
          ],
        ),
        const DividerCustom(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Язык',
              style: TextStyle(
                color: gMainColor,
                fontFamily: gFontRobReg,
                fontSize: 16.0,
              ),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(
                Icons.arrow_drop_down,
                color: gMainColor,
              ),
              style: const TextStyle(color: gMainColor),
              underline: Container(
                height: 0,
              ),
              onChanged: (String? value) {
                setState(() {
                  dropdownValue = value!;
                  languageCode = value;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: SvgPicture.asset(langCode()[value]!),
                );
              }).toList(),
            )
          ],
        ),
      ],
      onPressed: widget.onPressed,
    );
  }
}
