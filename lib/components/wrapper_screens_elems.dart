import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WrapperScreensElems extends StatelessWidget {
  const WrapperScreensElems({Key? key, this.child}) : super(key: key);

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
        Positioned(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Image.asset(
                'assets/images/background-elems.png',
                width: double.infinity,
                height: double.infinity,
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
