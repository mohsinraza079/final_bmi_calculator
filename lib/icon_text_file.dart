import 'package:final_bmi_calculator/constant_file.dart';
import 'package:flutter/material.dart';
import 'constant_file.dart';

class RepeatTextandIconeWidget extends StatelessWidget {
  RepeatTextandIconeWidget({@required this.iconData,this.label});
  final IconData iconData;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        )
      ],

    );
  }
}