import 'package:duesify_banking_app/Screens/admin_setting.dart';
import 'package:flutter/material.dart';

class MemberDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F27),
        title: Text(
          'EDIT',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Delete',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ],
        leading: Icon(
          Icons.home,
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Orange header section with user details and summary
            Container(
              height: height / 2.2,
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFFF7F27),
              ),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    // Allows content to overflow the Stack boundary
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminSettingsScreen()));
                        },
                        child: Container(
                          width: width * .9,
                          decoration: BoxDecoration(
                            color: Color(0xFFFF7F27),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: Offset(-8, 4),
                                // Shift shadow to the left and bottom
                                blurRadius: 4.0,
                                spreadRadius: 1.0,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Image.asset("lib/Assets/person.png"),
                                SizedBox(width: width * .05),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Benjamin Oyeyemi",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "+1 234567890",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: -10, // Move the icon outside the container
                        top: 0,
                        bottom: 0,
                        child: Image.asset(
                          "lib/Assets/message_send.png",
                          width: 50, // Adjust size if necessary
                          height: 50,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Member’s Summary',
                      style: TextStyle(
                        fontSize: width * 0.05,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.green,
                            child: Image.asset("lib/Assets/last_seen.png")),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Last seen',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '3 days ago',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.purple,
                            child: Image.asset("lib/Assets/last_deposit.png")),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Last Deposit',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '\$98,000',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.deepPurpleAccent,
                            child: Image.asset("lib/Assets/current_owing.png")),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Currently owing',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Text(
                          '\$98,000',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.02),
            // Transaction list section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'All transactions for Benjamin',
                      style: TextStyle(
                          color: Colors.black54, fontSize: width * 0.045),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  buildTransactionItem(
                      'DEBIT',
                      '-\$50.45',
                      'Note: Payment for the rent',
                      '15th Aug 2022',
                      Colors.red),
                  buildTransactionItem(
                      'CREDIT',
                      '\$200.50',
                      'Note: Payment for the rent',
                      '15th Aug 2022',
                      Colors.green),
                  buildTransactionItem(
                      'DEBIT',
                      '-\$50.45',
                      'Note: Payment for the rent',
                      '15th Aug 2022',
                      Colors.red),
                ],
              ),
            ),

            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton('NEW DEBIT', Colors.black, width, height),
                _buildActionButton(
                    'NEW CREDIT', Color(0xFFFF7F27), width, height),
              ],
            ),
            SizedBox(height: height * 0.03),
          ],
        ),
      ),
    );
  }

  Widget buildTransactionItem(
      String type, String amount, String note, String date, Color amountColor) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Leading icon
          CircleAvatar(
            backgroundColor: amountColor.withOpacity(0.1),
            child: Image.asset(
              type == 'DEBIT'
                  ? 'lib/Assets/debit_dollar.png'
                  : 'lib/Assets/credit_dollar.png',
              color: amountColor,
            ),
          ),
          SizedBox(width: 10),

          // Main column for type and note
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(type, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Text(
                  note,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),

          // Trailing column for amount and date
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                amount,
                style: TextStyle(
                    color: amountColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                date,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(
      String label, Color color, double width, double height) {
    return Container(
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
    );
  }
}
