import 'package:flutter/material.dart';
import 'package:gradus/constants.dart';
import 'package:gradus/states.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({
    super.key, this.width, required this.onChanged,
  });

  final dynamic width;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width != null ? width : 124.0,
      padding:
      const EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(27.0),
        border: Border.all(
          width: 1.0,
          color: Color(0xFFD9D9D9),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
        style: TextStyle(color: gMainColor),
      ),
    );
  }
}
