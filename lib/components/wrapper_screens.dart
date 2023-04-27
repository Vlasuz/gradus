import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WrapperScreens extends StatelessWidget {
  const WrapperScreens({Key? key, this.child}) : super(key: key);

  final child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: SvgPicture.asset(
                'assets/images/corners.svg',
                width: double.infinity,
              ),
            ),
          ),
        ),
        Container(
          child: child,
        )
      ],
    );
  }
}
