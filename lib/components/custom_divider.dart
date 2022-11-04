import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
    this.height = 5,
    this.left = 100,
    this.right = 100,
  }) : super(key: key);
  final double height;
  final double right;
  final double left;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: left, right: right),
      child: Divider(
        height: height,
        thickness: 1,
        color: kblack,
      ),
    );
  }
}
