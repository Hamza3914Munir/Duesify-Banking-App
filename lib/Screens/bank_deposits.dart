import 'package:duesify_banking_app/Screens/welcome.dart';
import 'package:flutter/material.dart';

class DepositScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F27),
        title: Text(
          'MAKE DEPOSIT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height / 2.3,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFFF7F27),
              ),
              child: Column(
                children: [
                  Card(
                    color: Color(0xFFFF7F27),
                    elevation: 4,
                    child: Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.white),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'Make offline deposit first via the bank details or payment link before filling the form below.',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bank Details',
                        style: TextStyle(
                          fontSize: width * 0.05,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                        ),
                        child: Text(
                          'PAYMENT LINK',
                          style: TextStyle(color: Color(0xFFFF7F27)),
                        ),
                      ),
                    ],
                  ),
                  Container(padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                          child:
                              Icon(Icons.account_balance, color: Colors.white),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Bank: ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),Spacer(),
                        Text(
                          'J.P Morgan Banks',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(Icons.account_circle, color: Colors.white),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Account: ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),Spacer(),
                        Text(
                          '122200387',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          child: Icon(Icons.person, color: Colors.white),
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Name: ',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          'Johnson Estate & Community',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: height * 0.02),

            Text(
              'Deposit Confirmation',textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: width * 0.045,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1D283A),
              ),
            ),
              SizedBox(height: height * 0.02),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'AMOUNT PAID',
                          labelStyle: TextStyle(color: Color(0xFFFF7F27)),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: width * 0.04),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'DATE*',
                          labelStyle: TextStyle(color: Color(0xFFFF7F27)),
                          suffixIcon: Icon(Icons.calendar_today,color: Color(0xFFFF7F27),),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.datetime,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),

              // Note Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  maxLength: 35,
                  decoration: InputDecoration(
                    labelText: 'NOTE*',
                    labelStyle: TextStyle(color: Color(0xFFFF7F27)),

                    border: OutlineInputBorder(),
                    counterText: '0/35',
                  ),
                ),
              ),
            SizedBox(height: height * 0.04),
            Container(
              width: width * 0.9,
              // Button width is 80% of screen width
              height: height * 0.07,
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
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Text(
                  "SEND ALERT", // Button text
                  style: TextStyle(
                    fontSize: width * 0.045,
                    // Font size is 4.5% of screen width
                    color: Colors.white,
                    // Text color is white
                    fontWeight: FontWeight.w600, // Semi-bold text
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
