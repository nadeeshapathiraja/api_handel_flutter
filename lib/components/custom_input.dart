import 'package:flutter/material.dart';
import 'package:testbloc/utils/app_colors.dart';

// ignore: must_be_immutable
class CustomInput extends StatelessWidget {
  CustomInput({
    Key? key,
    required this.controller,
    required this.lableText,
    this.iconBtn,
    this.isObsecure = false,
    this.inputType = TextInputType.text,
    this.hintText,
    this.icon,
  }) : super(key: key);

  TextEditingController controller = TextEditingController();
  final String lableText;
  final IconButton? iconBtn;
  final bool isObsecure;
  final TextInputType inputType;
  final String? hintText;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        obscureText: isObsecure,
        keyboardType: inputType,
        decoration: InputDecoration(
          focusColor: kblack,
          //add prefix icon
          hintText: hintText,
          suffixIcon: iconBtn,
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
    );
  }
}
