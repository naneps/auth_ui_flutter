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
  TextInputType inputType = TextInputType.text;

  CustomTextField({
    Key? key,
    this.suffIcon,
    this.hintText,
    this.controller,
    this.errorText,
    this.icon,
    this.labelText,
    this.obscureText,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? false,
      keyboardType: inputType,
      controller: controller,
      style: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        // border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        hintText: hintText,
        labelText: labelText,
        errorText: errorText,
        suffixIcon: suffIcon,
        icon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}
