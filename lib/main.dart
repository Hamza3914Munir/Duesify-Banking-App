import 'package:duesify_banking_app/Screens/home.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'Screens/Widgets/cutom_textfield.dart';
import 'Screens/Widgets/phone_textfield.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoWidget(),
      ),
    ),
  ));
}

class LogoWidget extends StatefulWidget {
  @override
  State<LogoWidget> createState() => _LogoWidgetState();
}

TextEditingController phoneController = TextEditingController();
TextEditingController passwordController = TextEditingController();
bool isAccountType = false;
CountryCode? selectedCountryCode;

class _LogoWidgetState extends State<LogoWidget> {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Positioned(
          left: screenWidth * 0.44,
          top: screenHeight * 0.1,
          child: SizedBox(
            width: screenWidth * 0.2,
            height: screenHeight * 0.1,
            child: Image.asset("lib/Assets/app_logo.png"),
          ),
        ),
        Positioned(
          left: screenWidth * 0.33,
          top: screenHeight * 0.23,
          child: Opacity(
            opacity: 1.0,
            child: Text(
              "LOGIN INTO YOUR",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: screenWidth * 0.045,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Positioned(
          left: screenWidth * 0.28,
          top: screenHeight * 0.27,
          child: Opacity(
            opacity: 1.0, // Set to 1.0 for full visibility
            child: Text(
              "PAYMENT’S MANAGER",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.4,
          left: screenWidth * 0.06,
          child: SizedBox(
            width: screenWidth * 0.88, // Make sure to give it enough width
            child: PhoneTextField(

            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.5,
          left: screenWidth * 0.06,
          child: SizedBox(
              width: screenWidth * 0.88,
              child: CustomTextFormField(
                labelText: 'Enter Your Password',
                prefixIcon: Icons.lock,
                controller: phoneController,
              )),
        ),
        Positioned(
          top: screenHeight * 0.6,
          left: screenWidth * 0.06,
          child: Text(
            "ACCOUNT TYPE",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: screenWidth * 0.035,
              fontFamily: "Roboto",
              color: Color(0xFFFF7F27),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.63,
          left: screenWidth * 0.06,
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5), // Shadow color
                      offset: Offset(0, 4), // Shadow offset
                      blurRadius: 2.0, // Shadow blur radius
                      spreadRadius: 1.0, // Shadow spread radius
                    ),
                  ],
                ),
                child: ToggleSwitch(
                  minWidth: screenWidth * 0.25,
                  // Set the width
                  cornerRadius: 10.0,
                  minHeight: screenHeight * 0.05,
                  // Set the height
                  activeBgColors: [
                    [Color(0xFFFF7F27)], // Blue when "Start" is active
                    [Color(0xFFFF7F27)] // Black26 when "Stop" is active
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: isAccountType ? 0 : 1,
                  totalSwitches: 2,
                  labels: ['MEMBER', 'ADMIN'],
                  radiusStyle: false,
                  // Ensure radiusStyle is false for rectangular corners
                  onToggle: (index) {
                    setState(() {
                      isAccountType = index == 0;
                    });
                  },
                ),
              ),
              SizedBox(
                width: screenWidth * 0.05,
              ),
              Text(
                "FORGOT PASSWORD?",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.035,
                  fontFamily: "Roboto",
                  color: Color(0xFFFF7F27),
                ),
              )
            ],
          ),
        ),
        Positioned(
          top: screenHeight * 0.7,
          left: screenWidth * 0.1,
          child: Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.07,
            decoration: BoxDecoration(
              color: Color(0xFFFF7F27),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  offset: Offset(0, 4), // Shadow offset
                  blurRadius: 2.0, // Shadow blur radius
                  spreadRadius: 1.0, // Shadow spread radius
                ),
              ],
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                "SIGN IN",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: screenWidth * 0.04,
                  fontFamily: "Roboto",
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.78,
          left: screenWidth * 0.33,
          child: Text(
            "Do you run an organization?",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: screenWidth * 0.035,
              fontFamily: "Roboto",
              color: Colors.grey,
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.8,
          left: screenWidth * 0.4,
          child: Text(
            "Sign up as Admin",
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: screenWidth * 0.035,
              fontFamily: "Roboto",
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
