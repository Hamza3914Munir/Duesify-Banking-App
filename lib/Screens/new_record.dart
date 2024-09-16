import 'package:duesify_banking_app/Screens/member_details.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class NewRecordScreen extends StatefulWidget {
  @override
  _NewRecordScreenState createState() => _NewRecordScreenState();
}

class _NewRecordScreenState extends State<NewRecordScreen> {
  bool isDebit = true;

  @override
  Widget build(BuildContext context) {
    // Get screen width and height using MediaQuery
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F27),
        title: Text("NEW RECORD", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.white,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Container(
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
                    minWidth: screenWidth * 0.3,
                    // Set the width
                    cornerRadius: 6,
                    minHeight: screenHeight * 0.07,
                    // Set the height
                    activeBgColors: [
                      [Color(0xFFFF7F27)], // Blue when "Start" is active
                      [Color(0xFFFF7F27)] // Black26 when "Stop" is active
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: isDebit ? 0 : 1,
                    totalSwitches: 2,
                    labels: ['DEBIT', 'CREDIT'],
                    radiusStyle: false,
                    // Ensure radiusStyle is false for rectangular corners
                    onToggle: (index) {
                      setState(() {
                        isDebit = index == 0;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              buildInputField("ENTER AMOUNT", "Numbers only"),
              SizedBox(height: screenHeight * 0.02),
              buildInputField("SELECT MEMBER(S)", "Type name", isDropdown: true),
              SizedBox(height: screenHeight * 0.02),
              buildInputField("TRANSACTION REMARK", "January transport fees"),
              SizedBox(height: screenHeight * 0.02),
              buildInputField("DATE", "Today", isDropdown: true),
              SizedBox(height: screenHeight * 0.02),
              buildInputField("ADMIN PASSWORD", ""),
              SizedBox(height: screenHeight * 0.14),
              Center(
                child: Text(
                  "This is a DEDUCTION transaction (like an invoice)",
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w600,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Container(
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
                  color: Color(0xFFFF7F27), // Button background color (#FF7F27)
                  borderRadius: BorderRadius.circular(
                      10), // Rounded corners with radius of 10
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MemberDetailsScreen()));
                  },
                  child: Text(
                    "PREVIEW", // Button text
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
              SizedBox(height: screenHeight * 0.05)
            ],
          ),
        ),
      ),
    );
  }

  // A reusable method to build input fields
  Widget buildInputField(String label, String hint, {bool isDropdown = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
          ),
        ),
        isDropdown
            ? Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Expanded(child: Text(hint)),
              Icon(Icons.arrow_drop_down, color: Colors.orange),
            ],
          ),
        )
            : TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
