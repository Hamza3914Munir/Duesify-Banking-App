import 'package:duesify_banking_app/Screens/PhoneOTP.dart';
import 'package:duesify_banking_app/Screens/Widgets/phone_textfield.dart';
import 'package:duesify_banking_app/main.dart';
import 'package:flutter/material.dart';

import 'Widgets/cutom_textfield.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Image.asset(
                'lib/Assets/app_logo.png',
                // Replace with your actual image path
                height: 100, // Adjust size according to your design
              ),
              SizedBox(height: 20),

              // Title
              Text(
                'SETUP YOUR ORGANIZATION',
                style: TextStyle(
                  color: Color(0xFF1D283A),
                  fontSize: 24, // Adjust font size according to design
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),

              // Description
              Text(
                'PLEASE NOTE:\nMEMBERS ARE NOT REQUIRED TO REGISTER.\nCONTACT YOUR ORGANIZATION ADMIN\nTO GET YOUR MEMBERSHIP LOGIN DETAILS.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF808080),
                  fontSize: 14, // Adjust font size according to design
                ),
              ),
              SizedBox(height: 30),

              // Phone Number
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'PHONE NUMBER',
                  style: TextStyle(
                    color: Color(0xFFFF7F27),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              PhoneTextField(),
              SizedBox(height: 20),

              // Password
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'CREATE YOUR PASSWORD',
                  style: TextStyle(
                    color: Color(0xFFFF7F27),
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              CustomTextFormField(
                labelText: 'Enter your password',
                prefixIcon: Icons.lock_outline,
                controller: passwordController,
              ),
              SizedBox(height: 30),

              // Next Button
              Container(
                width: screenWidth * 0.8,
                // Button width is 80% of screen width
                height: screenHeight * 0.07,
                // Button height is 7% of screen height
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      offset: Offset(0, 4), // Shadow offset
                      blurRadius: 2.0, // Shadow blur radius
                      spreadRadius: 1.0, // Shadow spread radius
                    ),
                  ],
                  color: Color(0xFFFF7F27), // Button background color (#FF7F27)
                  borderRadius: BorderRadius.circular(
                      10), // Rounded corners with radius of 10
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OTPVerificationScreen()));
                  },
                  child: Text(
                    "NEXT", // Button text
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      // Font size is 4.5% of screen width
                      color: Colors.white,
                      // Text color is white
                      fontWeight: FontWeight.w600, // Semi-bold text
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Already have an account?
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Already have an account?\n',
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(
                      text: 'Admin Login ',
                      style: TextStyle(color: Color(0xFFFF7F27)),
                    ),
                    TextSpan(
                      text: 'or ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Member Login',
                      style: TextStyle(color: Color(0xFFFF7F27)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Terms and Privacy
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By clicking NEXT, you agree to the\n',
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Terms of Service ',
                      style: TextStyle(
                        color: Color(0xFFFF7F27),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'Privacy Policies',
                      style: TextStyle(
                        color: Color(0xFFFF7F27),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
