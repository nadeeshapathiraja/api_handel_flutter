import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class CustomTextfeild extends StatelessWidget {
  const CustomTextfeild({
    Key? key,
    this.controller,
    this.preffix,
    this.suffix,
    this.hintText,
    this.isObscured = false,
    this.inputType,
  }) : super(key: key);

  final TextEditingController? controller;
  final Widget? preffix;
  final String? hintText;
  final Widget? suffix;
  final bool isObscured;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SizedBox(
          height: 60,
          child: TextField(
            keyboardType: inputType,
            controller: controller,
            obscureText: isObscured,
            decoration: InputDecoration(
              filled: true,
              fillColor: kwhite,
              prefixIcon: preffix,
              suffix: suffix,
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.white)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red)),
            ),
          ),
        ),
      ),
    );
  }
}
