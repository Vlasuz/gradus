import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class PlayerItem extends StatelessWidget {
  const PlayerItem({
    super.key,
    required this.id,
    required this.title,
    required this.colorIcon,
    required this.colorBody,
    required this.icon,
  });

  final String id;
  final String title;
  final Color colorIcon;
  final Color colorBody;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      margin: EdgeInsets.only(bottom: 14.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 20.0,
                height: 20.0,
                decoration: BoxDecoration(
                    color: gWhiteColor,
                    borderRadius: BorderRadius.circular(100.0)),
                child: Center(
                  child: Text(
                    id,
                    style: TextStyle(
                      fontFamily: gFontRobReg,
                      color: gMainColor,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
              Container(
                height: 82.0,
                width: 265.0,
                child: Stack(
                  children: [
                    Positioned(
                      child: Center(
                        child: Container(
                          height: 65.0,
                          decoration: BoxDecoration(
                            color: colorBody,
                            borderRadius: BorderRadius.circular(80.0),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: 82.0,
                          height: 82.0,
                          decoration: BoxDecoration(
                            color: colorIcon,
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(
                              width: 1.0,
                              color: gMainColor,
                            )
                          ),
                          child: Center(
                            child: icon,
                          ),
                        ),
                        SizedBox(
                          width: 11.0,
                        ),
                        Flexible(
                          child: Text(
                            title,
                            style: TextStyle(
                              fontFamily: gFontNunBold,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        )
                      ],
                    )
                  ],
                ),
              ),
              // SvgPicture.asset('assets/icons/delete-player.svg')
              SizedBox(width: 20.0,)
            ],
          )
        ],
      ),
    );
  }
}
