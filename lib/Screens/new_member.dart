import 'package:duesify_banking_app/Screens/Widgets/phone_textfield.dart';
import 'package:duesify_banking_app/Screens/duesify_home.dart';
import 'package:flutter/material.dart';

class NewMemberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Color(0XFFFF7F27),
          title: Text(
            'NEW MEMBER',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenWidth * 0.9,
                // Button width is 80% of screen width
                height: screenHeight * 0.07,
                // Button height is 7% of screen height
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5), // Shadow color
                      offset: Offset(0, 4), // Shadow offset
                      blurRadius: 2.0, // Shadow blur radius
                      spreadRadius: 1.0, // Shadow spread radius
                    ),
                  ],
                  color: Colors.black, // Button background color (#FF7F27)
                  borderRadius: BorderRadius.circular(
                      10), // Rounded corners with radius of 10
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Import Member Details From Contacts", // Button text
                    style: TextStyle(
                      fontSize: screenWidth * 0.040,
                      // Font size is 4.5% of screen width
                      color: Colors.white,
                      // Text color is white
                      fontWeight: FontWeight.w600, // Semi-bold text
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * .04),
              ProfileTextField(
                  labelText: "FIRST NAME",
                  hintText: "E.g., Benjamin",
                  hintStyle: TextStyle(color: Colors.grey),
                  containerHeight: screenHeight * .06,
                  containerWidth: screenWidth * .9),
              SizedBox(height: screenHeight * .02),
              ProfileTextField(
                  labelText: "LAST NAME",
                  hintText: "E.g., Ahmed",
                  hintStyle: TextStyle(color: Colors.grey),
                  containerHeight: screenHeight * .06,
                  containerWidth: screenWidth * .9),
              SizedBox(height: screenHeight * .02),
              Text(
                "PHONE NUMBER",
                style: TextStyle(color: Colors.orange),
              ),
              PhoneTextField(),
              SizedBox(height: screenHeight * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProfileTextField(
                      labelText: "USERS PASSWORD",
                      hintText: "123456",
                      hintStyle: TextStyle(color: Colors.grey),
                      containerHeight: screenHeight * .06,
                      containerWidth: screenWidth * .4),
                  ProfileTextField(
                      labelText: "REPEAT PASSWORD",
                      hintText: "123456",
                      hintStyle: TextStyle(color: Colors.grey),
                      containerHeight: screenHeight * .06,
                      containerWidth: screenWidth * .4),
                ],
              ),
              SizedBox(height: screenHeight * .04),
              Container(
                width: screenWidth * 0.9,
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
                  color: Colors.white, // Button background color (#FF7F27)
                  borderRadius: BorderRadius.circular(
                      10), // Rounded corners with radius of 10
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: Color(0XFF17BF5F), shape: BoxShape.circle),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: screenWidth * .04,
                      ),
                      Text(
                        "Member ID (Optional)", // Button text
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          // Font size is 4.5% of screen width
                          color: Colors.black,
                          // Text color is white
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: screenHeight * .07),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DuesifyHomeScreen2()));
                },
                child: Container(
                  width: screenWidth * 0.9,
                  // Button width is 80% of screen width
                  height: screenHeight * 0.07,
                  // Button height is 7% of screen height
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.5), // Shadow color
                        offset: Offset(0, 4), // Shadow offset
                        blurRadius: 2.0, // Shadow blur radius
                        spreadRadius: 1.0, // Shadow spread radius
                      ),
                    ],
                    color: Color(0xFFFF7F27),
                    // Button background color (#FF7F27)
                    borderRadius: BorderRadius.circular(
                        10), // Rounded corners with radius of 10
                  ),
                  child: Center(
                    child: Text(
                      "ADD MEMBER", // Button text
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
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ProfileTextField({
    required String labelText,
    required double containerHeight,
    required double containerWidth,
    String? hintText,
    TextStyle? hintStyle,
    Widget? suffixIcon,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The text with required color
        Text(
          labelText,
          style: TextStyle(
            color: Colors.orange,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        // Container with a TextField inside
        Container(
          height: containerHeight,
          width: containerWidth,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          // Padding inside the container
          child: TextField(
            maxLines: 1,
            decoration: InputDecoration(
              hintText: hintText ?? "", // Optional hint text
              hintStyle: hintStyle, // Optional hint style
              suffixIcon: suffixIcon, // Optional suffix icon
              border: InputBorder
                  .none, // No default border as container already has one
            ),
          ),
        ),
      ],
    );
  }
}
