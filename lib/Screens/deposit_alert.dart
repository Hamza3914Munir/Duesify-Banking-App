import 'package:duesify_banking_app/Screens/members_summary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DepositAlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('NEW DEPOSIT ALERT',
            style: TextStyle(
              color: Colors.white,
              fontSize: width * .05,
              shadows: [
                Shadow(
                  blurRadius: 4.0,
                  color: Colors.black.withOpacity(0.5),
                  offset: Offset(0, 4.0),
                ),
              ],
            )),
        backgroundColor: Color(0xFFFF7F27),
        centerTitle: true,
        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: width * .09,shadows: [
          Shadow(
            blurRadius: 4.0,
            color: Colors.black.withOpacity(0.5),
            offset: Offset(0, 4.0),
          ),
        ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [

          Container(
            padding: EdgeInsets.symmetric(
                vertical: height * 0.02, horizontal: width * 0.05),
            decoration: BoxDecoration(
              color: Color(0xFFFF7F27),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Text(
                   'Total',
                   style: TextStyle(
                     color: Colors.white70,
                     fontSize: 20,
                     fontWeight: FontWeight.w400,
                   ),
                 ),
                 Text(
                   '\$7,500.00',
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 24,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ],),
                Image.asset("lib/Assets/money.png")
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pending Approval',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Transform.rotate(
                          angle:  90 * 3.14 / 180,
                          child: Icon(
                            Icons.arrow_back_ios_new,  // Arrow up icon
                            size: width * .045,
                            color: Color(0XFFFF7F27),
                          ),
                        ),
                        SizedBox(width: width* 0.02,),
                        Text('Sort', style: TextStyle(color: Color(0xFFFF7F27), fontSize: width * .04)),
                        SizedBox(width: width* 0.02,),
                        Transform.rotate(angle: -90 * 3.14 / 180,
                          child: Icon(
                            Icons.arrow_back_ios_new,  // Arrow up icon
                            size: width * .045,
                            color: Color(0XFFFF7F27),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            
                SizedBox(height: height * 0.02),
            
                // List of pending approvals
                Expanded(
                  child: ListView(
                    children: [
                      pendingApprovalItem(context, 'Jamal Adams', '\$250', 'lib/Assets/person.png'),
                      pendingApprovalItem(context, 'Jamal Adams', '\$2250', 'lib/Assets/hamza.png'),
                      pendingApprovalItem(context, 'Jamal Adams', '\$250', 'lib/Assets/person.png'),
                      pendingApprovalItem(context, 'Jamal Adams', '\$3250', 'lib/Assets/hamza.png'),
                      pendingApprovalItem(context, 'Jamal Adams', '\$3350', 'lib/Assets/person.png'),
                    ],
                  ),
                ),
              ],),
            ),
          ),

          // Reject and Approve Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              actionButton('REJECT', Colors.black, width, height),
              actionButton(
                'APPROVE',
                Color(0xFFFF7F27),
                width,
                height,
                tap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MembersSummaryScreen()));
                },
              ),

            ],
          ),

          SizedBox(height: height * 0.02),
        ],
      ),
    );
  }

  // Widget for each Pending Approval Item
  Widget pendingApprovalItem(BuildContext context, String name, String amount,String avatarImage) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () {
          showPaymentDetailsDialog(context, name, amount, '24th Aug 22');
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(avatarImage), // Placeholder image
              ),
              SizedBox(width: width * .060),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Note: Payment for rent',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Text(
                amount,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Expanded(
                child: Checkbox(
                  value: false,
                  onChanged: (val) {
                    // Your onChanged logic here
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0), // Optional: for rounded corners
                  ),
                  side: BorderSide(
                    color: Colors.blueGrey[150] ?? Colors.grey, // Fallback to Colors.grey if Colors.grey[350] is null
                    width: 2.0,          // Set the border width here
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget for action buttons
  Widget actionButton(String label, Color color, double width, double height, {VoidCallback? tap}) {
    return GestureDetector(
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

  void showPaymentDetailsDialog(
      BuildContext context, String name, String amount, String paymentDate) {
    final width = MediaQuery.of(context).size.width; // Recalculate width here
    final height = MediaQuery.of(context).size.height; // Recalculate height here

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Less circular corners
          ),
          child: Container(
            width: width * 0.95, // Increase the width (95% of screen width)
            padding: EdgeInsets.all(20), // Add padding for content
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button aligned to the top-right corner
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      padding: EdgeInsets.all(3), // Reduced padding for a smaller button
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Transform.rotate(
                        angle: 45,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 16, // Smaller icon size
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Payment Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height * 0.02), // Spacing between title and content

                // Adding spacing between texts
                paymentDetailRow('Member:', name),
                paymentDetailRow('Amount Paid:', amount),
                paymentDetailRow('Payment Date:', paymentDate),
                paymentDetailRow('Note:', 'Payment for rent'),

                SizedBox(height: height * 0.03), // Spacing between content and buttons

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    actionButton(
                      'REJECT',
                      Color(0xFF7F8080),
                      width * .7,
                      height,
                      tap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    SizedBox(width: 10), // Space between buttons
                    actionButton(
                      'APPROVE',
                      Color(0xFFFF7F27),
                      width * .7,
                      height,
                      tap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

// Widget to create rows with space-apart text
  Widget paymentDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0), // Equal spacing between rows
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(color: Colors.grey),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.right, // Align text to the right
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

}
