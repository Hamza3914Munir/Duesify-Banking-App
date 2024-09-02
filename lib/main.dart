import 'package:flutter/material.dart';

import 'app_logo.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: LogoWidget(),
      ),
    ),
  ));
}

class LogoWidget extends StatelessWidget {
  @override
  var age = 24;
  var name = "hamza";
  var date = "02/09/2024";

  void myInfo(){
    print("My name is $name and" );
    print("My age is $age");

  }
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.orange, // Background color of the icon
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          child: CustomPaint(
            painter: LogoPainter(),
            child: Container(),
          ),
        ),
        SizedBox(height: 10),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "DUE",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              TextSpan(
                text: "SIFY",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
