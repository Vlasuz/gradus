import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 20.0,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  foregroundColor: Colors.transparent
              ),
              onPressed: () {
                print('Settings');
              },
              child: SvgPicture.asset('assets/icons/setting.svg'),
            ),
          ),
          SizedBox(width: 20.0,),
          SizedBox(
            width: 20.0,
            child: TextButton(
              style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  foregroundColor: Colors.transparent
              ),
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
