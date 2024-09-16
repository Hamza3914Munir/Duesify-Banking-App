import 'package:flutter/material.dart';
import 'package:country_code_picker_plus/country_code_picker_plus.dart';

class PhoneTextField extends StatefulWidget {


  @override
  _PhoneTextFieldState createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: phoneController,
      cursorColor: Colors.black,
      obscureText: false,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: 'Enter Phone Number',
        labelStyle: TextStyle(color: Color(0XFFFF7F27)),
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CountryCodePicker(
              onChanged: (code) {
                setState(() {
                });
              },
              initialSelection: 'US',
              showFlag: true,
              favorite: ['+1', '+92'], // List of your favorite country codes.
              showDropDownButton: true,
            ),
            SizedBox(width: 8),
          ],
        ),
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
      validator: (value) {
        if (value!.isEmpty) {
          return "Enter phone number";
        }
        return null;
      },
    );
  }
}
