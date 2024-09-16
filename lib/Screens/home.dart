import 'package:duesify_banking_app/Screens/log_in.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve the screen width and height to create a responsive design
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: SingleChildScrollView( // Enable scrolling if content overflows
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(255, 255, 255, 0), // rgba(255, 255, 255, 0)
                Color(0xFFFFE7D7), // #FFE7D7
              ],
              stops: [0.0, 1.0], // 0% to 100%
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Center align all children horizontally
            children: [
              SizedBox(height: screenHeight * 0.05), // Top spacing (5% of screen height)
              Image.asset(
                'lib/Assets/home_logo.png', // Path to the first image (logo)
                width: screenWidth * 0.4, // Set image width to 30% of screen width
                height: screenHeight * 0.15, // Set image height to 10% of screen height
              ),
              SizedBox(height: screenHeight * 0.02), // Spacing between logo and second image (2% of screen height)
              Image.asset(
                'lib/Assets/payment.png', // Path to the second image (payment)
                width: screenWidth * 0.6, // Set image width to 60% of screen width
                height: screenHeight * 0.35, // Set image height to 35% of screen height
              ),
              SizedBox(height: screenHeight * 0.01), // Spacing between texts (1% of screen height)
              Text(
                "Debt Payment Management", // Subtitle text
                style: TextStyle(
                  fontSize: screenWidth * 0.05, // Font size is 5% of screen width
                  color: Color(0xFF333D41), // Text color in hex format (#333D41)
                ),
              ),
              SizedBox(height: screenHeight * 0.015), // Spacing between subtitle and description text (1.5% of screen height)
              Text(
                "Dues, Levies, Rent, Thrifts, Loans, Savings etc\nwithin organization, community or business.", // Description text
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: screenWidth * 0.04, // Font size is 4% of screen width
                  color: Color(0xFF333D41B8), // Text color in hex format with transparency (#333D41B8)
                ),
              ),
              SizedBox(height: screenHeight * 0.025), // Spacing between description and login info text (2.5% of screen height)
              Text(
                "TWO WAYS LOGIN   |   ADMIN & MEMBERS", // Additional info text
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: screenWidth * 0.04, // Font size is 4% of screen width
                  fontWeight: FontWeight.w600, // Semi-bold text
                  color: Color(0xFF000000), // Text color in hex format (#000000)
                ),
              ),
              SizedBox(height: screenHeight * 0.05), // Spacing before the button (5% of screen height)
              Container(
                width: screenWidth * 0.8, // Button width is 80% of screen width
                height: screenHeight * 0.07, // Button height is 7% of screen height
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
Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text(
                    "GET STARTED", // Button text
                    style: TextStyle(
                      fontSize: screenWidth * 0.045, // Font size is 4.5% of screen width
                      color: Colors.white, // Text color is white
                      fontWeight: FontWeight.w600, // Semi-bold text
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // Spacing before the footer text (3% of screen height)
              Text(
                "By using Duesify app, you agree to the\nTerms of Service and Privacy Policies", // Footer text
                textAlign: TextAlign.center, // Center align the text
                style: TextStyle(
                  fontSize: screenWidth * 0.03, // Font size is 3% of screen width
                  color: Color(0xFFD9D9D9), // Text color in hex format (#D9D9D9)
                ),
              ),
              SizedBox(height: screenHeight * 0.05), // Bottom spacing (5% of screen height)
            ],
          ),
        ),
      ),
    );
  }
}