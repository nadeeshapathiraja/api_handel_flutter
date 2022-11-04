import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import 'custom_text.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.icon,
    required this.lable,
    this.lines = 1,
    this.lenth,
    required this.controller,
    this.readonly = false,
    this.obscureText = false,
  }) : super(key: key);

  final IconData? icon;
  final String lable;
  final int lines;
  final int? lenth;
  final TextEditingController controller;
  final bool readonly;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            children: [
              CustomText(
                text: lable,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(height: 5),
          TextFormField(
            controller: controller,
            maxLines: lines,
            maxLength: lenth,
            readOnly: readonly,
            obscureText: obscureText,
            style: const TextStyle(
              fontSize: 16,
              color: kblack,
            ),
            decoration: InputDecoration(
              focusColor: Colors.white,
              //add prefix icon
              prefixIcon: Icon(
                icon,
                color: Colors.grey,
              ),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),

              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: kgreen,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              fillColor: kGrey,
            ),
          ),
        ],
      ),
    );
  }
}
