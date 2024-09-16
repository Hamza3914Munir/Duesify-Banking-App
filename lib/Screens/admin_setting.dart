import 'package:duesify_banking_app/Screens/deposit_alert.dart';
import 'package:flutter/material.dart';

class AdminSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .of(context)
        .size
        .width;
    final height = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ADMIN SETTINGS",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Color(0xFFFF7F27),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.15,
                  color: Color(0xFFFF7F27),
                ),
                Positioned(
                  top: height * 0.05,
                  child: CircleAvatar(
                    radius: width * 0.15,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: width * 0.14, // Adjust radius
                      child: ClipOval(
                        child: Image.asset(
                          'lib/Assets/hamza.png',
                          fit: BoxFit.cover,
                          width: width * 0.28,
                          // Keep width and height same for circle
                          height: width * 0.28,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.17,
                  left: width * .56,
                  child: Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.edit, color: Colors.white, size: 20),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.08),

            // Input fields start here
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                children: [
                  Expanded(
                    child: ProfileTextField(
                      labelText: "COMPANY",
                      containerHeight: 50,
                      containerWidth: width * 0.3,
                      hintText: "BENJAMIN",
                    ),
                  ),
                  ProfileTextField(
                    labelText: "PHONE NUMBER",
                    containerHeight: 50,
                    containerWidth: width * .55,
                    hintText: "+440123456789",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: Align(alignment: Alignment.topRight,
                child: Text(
                  "Contact us to change your phone number",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            ProfileTextField(
              labelText: "EMAIL ADDRESS",
              containerHeight: 50,
              containerWidth: width * 0.9,
              hintText: "savestify@gmail.com",
            ),
            SizedBox(height: height * 0.02),
            ProfileTextField(
              labelText: "ADDRESS",
              containerHeight: 50,
              containerWidth: width * 0.9,
              hintText: "123, Billing Way. New York",
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                children: [
                  Expanded(
                    child: ProfileTextField(
                        labelText: "COUNTRY",
                        containerHeight: 50,
                        containerWidth: width * 0.4,
                        hintText: "United States",
                        suffixIcon: Icon(Icons.arrow_drop_down)),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ProfileTextField(
                      labelText: "DEFAULT COUNTRY",
                      containerHeight: 50,
                      containerWidth: width * 0.4,
                      hintText: "USD - \$",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.06),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Align(alignment: Alignment.topLeft,
                child: Text(
                  "DISPLAY ACCOUNT DETAILS (Optional)",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(children: [ProfileTextField(
                labelText: "BANK NAME",
                containerHeight: 50,
                hintStyle: TextStyle(color: Colors.grey),
                containerWidth: width * 0.4,
                hintText: "Citi Bank",
              ),
                SizedBox(width: 15,),
                ProfileTextField(
                  labelText: "ACCOUNT NUMBER",
                  containerHeight: 50,
                  hintStyle: TextStyle(color: Colors.grey),
                  containerWidth: width * 0.4,
                  hintText: "E.g., 2091212839",
                ),
              ],),
            ),
            SizedBox(height: height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Row(
                children: [
                  Expanded(
                    child: ProfileTextField(
                      labelText: "ACCOUNT NAME",
                      containerHeight: 50,
                      hintStyle: TextStyle(color: Colors.grey),
                      containerWidth: width * 0.4,
                      hintText: "E.g., Savestify School",
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ProfileTextField(
                      labelText: "PAYMENT LINK",
                      containerHeight: 50,
                      containerWidth: width * 0.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.04),

            // Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildActionButton('PREMIUM', Colors.black, width, height),
                buildActionButton(
                    'SAVE', Color(0xFFFF7F27), width, height, tap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DepositAlertScreen()));
                }),
              ],
            ),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }

  Widget buildActionButton(
      String label,
      Color color,
      double width,
      double height, {
        VoidCallback? tap,
      }) {
    return InkWell(
      onTap: tap,
      child: Container(
        width: width * 0.4,
        height: height * 0.06,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              offset: Offset(0, 4),
              blurRadius: 8,
            ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

}

// A function that returns a widget (Custom Column with Text and Container)
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
