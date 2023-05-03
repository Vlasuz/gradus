import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradus/constants.dart';

class TopButtons extends StatefulWidget {
  TopButtons({
    super.key, required this.isSettingsOpen,
  });

  final isSettingsOpen;

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Container(
      width: MediaQuery.of(context).size.width - 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 20.0,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  foregroundColor: Colors.transparent),
              onPressed: widget.isSettingsOpen,
              child: SvgPicture.asset('assets/icons/setting.svg'),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          SizedBox(
            width: 20.0,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  foregroundColor: Colors.transparent),
              onPressed: () {
                print('share');
              },
              child: SvgPicture.asset('assets/icons/share.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
