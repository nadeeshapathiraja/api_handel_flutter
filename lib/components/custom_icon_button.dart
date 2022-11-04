
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.ontap,
  }) : super(key: key);
  final Function() ontap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          color: kwhite,
          borderRadius: BorderRadius.circular(200),
          boxShadow: [
            BoxShadow(
              color: kGrey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: Center(
          child: Icon(
            icon,
            size: 20,
          ),
        ),
      ),
    );
  }
}
