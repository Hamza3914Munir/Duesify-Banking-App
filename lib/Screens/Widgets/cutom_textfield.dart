import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final IconData prefixIcon;
  final Widget? suffixIcon;
  final bool visibility;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  CustomTextFormField({
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.visibility = false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
        cursorColor: Colors.white,
        obscureText: visibility,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
        hintText: labelText,
        labelStyle: TextStyle(color: Color(0XFFFF7F27)),
        prefixIcon: Icon(prefixIcon,color: Color(0XFFFF7F27),),
        suffixIcon: suffixIcon ,
        suffixIconColor: Color(0XFFFF7F27),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFDDDCDC), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0XFFFF7F27), width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.red, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0XFFFF7F27), width: 4),
        ),
      ),
      validator: validator
    );
  }
}
