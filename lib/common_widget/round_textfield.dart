import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgColor;
  final Widget? left;
  
  const RoundTextfield(
    {super.key, 
    required this.hintText, 
    this.controller, 
    this.keyboardType,
    this.bgColor,
    this.left, 
    this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(color : bgColor ?? TColor.textfield, borderRadius: BorderRadius.circular(25)),
            child: TextField(
              autocorrect: false, 
              controller: controller,
              obscureText: obscureText, 
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding: 
                  const EdgeInsets.symmetric(vertical: 20),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: hintText,
              prefixIcon: left,
              hintStyle: TextStyle(
                color: TColor.placeholder,
                fontSize: 14, 
                fontWeight: FontWeight.w500),
            ),
            ),
            );
  }
}