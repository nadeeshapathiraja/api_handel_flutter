import 'package:flutter/material.dart';
import 'package:testbloc/components/custom_loader.dart';

import '../utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.onTap,
    required this.text,
    this.height = 60,
    this.width = double.infinity,
    this.isLoading = false,
    this.fontColor = kwhite,
    this.fontSize = 17,
    this.color = btnColor,
    this.icon,
  }) : super(key: key);

  final Function() onTap;
  final String text;
  final double height;
  final double width;
  final bool isLoading;
  final Color fontColor;
  final double fontSize;
  final Color color;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: isLoading ? null : onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: isLoading
                ? const CustomLoader()
                : icon != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            icon,
                            color: kwhite,
                          ),
                          Text(
                            text,
                            style: TextStyle(
                              fontSize: fontSize,
                              color: fontColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      )
                    : Text(
                        text,
                        style: TextStyle(
                          fontSize: fontSize,
                          color: fontColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
          ),
        ),
      ),
    );
  }
}
