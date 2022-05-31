import 'package:auth_ui_flutter/page/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  String? hintText;
  String? labelText;
  String? errorText;
  Widget? suffIcon;
  TextEditingController? controller;
  IconData? icon;
  bool? obscureText;
  bool? readOnly;
  TextInputType? inputType;

  CustomTextField({
    Key? key,
    this.readOnly,
    this.suffIcon,
    this.hintText,
    this.controller,
    this.errorText,
    this.icon,
    this.labelText,
    this.inputType,
    this.obscureText,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly ?? false,
      obscureText: obscureText ?? false,
      keyboardType: inputType ?? TextInputType.text,
      controller: controller,
      style: GoogleFonts.poppins(
        color: kFontColor,
        fontSize: 16,
      ),
      // selectionControls: TextSelectionControls(),
      decoration: InputDecoration(
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,
        suffixIcon: suffIcon,
        icon: icon != null
            ? Icon(
                icon,
                // color: kMainColor,
              )
            : null,
      ),
    );
  }
}
