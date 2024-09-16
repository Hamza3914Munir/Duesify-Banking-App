import 'package:duesify_banking_app/Screens/bank_deposits.dart';
import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.05,vertical: height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // App Logo
              Image.asset(
                'lib/Assets/app_logo.png',
                width: width * 0.25,
                height: height * 0.15,
              ),
              SizedBox(height: height * 0.02),
          
              // OTP Illustration
              Image.asset(
                'lib/Assets/otp_pin.png',
                width: width * 0.6,
                height: height * 0.25,
              ),
              SizedBox(height: height * 0.05),
          
              // "WHAT’S THE CODE IN SMS?" Text
              Text(
                "WHAT’S THE CODE IN SMS?",
                style: TextStyle(
                  fontSize: width * 0.05,fontWeight: FontWeight.bold,
                  color: Color(0xFF1D283A),
                ),
              ),
              SizedBox(height: height * 0.02),
          
              // Rich Text: "Enter the 4-digit code in SMS or Change number"
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'Enter the 4-digit code in SMS or ',
                  style: TextStyle(
                    fontSize: width * 0.04,
                    color: Color(0xFF1D283A),
                  ),
                  children: [
                    TextSpan(
                      text: 'Change number',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.03),
          
              // OTP Input Fields
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) {
                  return Card(color: Colors.white.withOpacity(0.8),elevation: 5,
                    child: Container(
                      width: width * 0.15,
                      height: height * 0.08,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(8),
                    
                      ),
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: TextStyle(
                            fontSize: width * 0.08,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            counterText: '',
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0XFFFF7F27), width: 3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              SizedBox(height: height * 0.04),
          
              // Elevated Button
              Container(
                width: width * 0.8, // Button width is 80% of screen width
                height: height * 0.07, // Button height is 7% of screen height
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    offset: Offset(0, 4), // Shadow offset
                    blurRadius: 2.0, // Shadow blur radius
                    spreadRadius: 1.0, // Shadow spread radius
                  ),
                ],
                  color: Color(0xFFFF7F27), // Button background color (#FF7F27)
                  borderRadius: BorderRadius.circular(10), // Rounded corners with radius of 10
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DepositScreen()));
                  },
                  child: Text(
                    "NEXT", // Button text
                    style: TextStyle(
                      fontSize: width * 0.045, // Font size is 4.5% of screen width
                      color: Colors.white, // Text color is white
                      fontWeight: FontWeight.w600, // Semi-bold text
                    ),
                  ),
                ),
              ),
              SizedBox(height: height * 0.03),
          
              // "Code not received? Resent again 59 seconds" Text
              Text(
                'Code not received? Resent again 59 seconds',
                style: TextStyle(
                  fontSize: width * 0.035,
                  color: Color(0xFF828282),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
