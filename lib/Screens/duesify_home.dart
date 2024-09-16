import 'package:duesify_banking_app/Screens/messages.dart';
import 'package:flutter/material.dart';

class DuesifyHomeScreen2 extends StatefulWidget {
  @override
  State<DuesifyHomeScreen2> createState() => _DuesifyHomeScreen2State();
}

class _DuesifyHomeScreen2State extends State<DuesifyHomeScreen2> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .06,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "DUESIFY",
                    style: TextStyle(
                        shadows: [
                          Shadow(
                            offset: Offset(2, 2), // Move shadow down and right
                            color: Colors.black,
                            blurRadius: 4,
                          ),
                        ],
                        fontWeight: FontWeight.bold,
                        fontSize: width * .1,
                        color: Color(0xFFFF7F27)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: width * 0.07),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        gradient: LinearGradient(
                          colors: [Color(0xFFFF7F27), Color(0xFFE1006A)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/background.png'),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.orangeAccent,
                              blurRadius: 3,
                              spreadRadius: 4,
                              offset: Offset(3, 3)),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Johnson Estate',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: width * 0.08,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      offset: Offset(0, 4),
                                      blurRadius: 2)
                                ]),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '633.00 USD',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: width * 0.07,
                            ),
                          ),
                          SizedBox(height: width * .08),
                          Row(children: [
                            ...List.generate(4, (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.white,
                              );
                            }),
                            Spacer(),
                            ...List.generate(4, (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.white,
                              );
                            }),
                            Spacer(),
                            ...List.generate(3, (index) {
                              return Icon(
                                Icons.star,
                                color: Colors.white,
                              );
                            }),
                          ]),
                          Row(
                            children: [
                              Icon(
                                Icons.home,
                                color: Colors.white,
                                size: width * .09,
                              ),
                              Text(
                                'SWITCH',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Image.asset(
                                "lib/Assets/money.png",
                                width: width * .08,
                                height: width * .08,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: -width * 0.05,
                      top: -height * 0.05,
                      child: CircleAvatar(
                        radius: width * 0.12,
                        backgroundImage: AssetImage('lib/Assets/person.png'),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.03),

              // Recent Transactions section
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(
                    fontSize: width * 0.045,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: height * 0.02),

              // Transactions Filter
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Filter',
                        ),
                      ],
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Text(
                              'From',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(width: 15),
                            Icon(Icons.calendar_today, color: Colors.orange),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Row(
                          children: [
                            Text('To', style: TextStyle(color: Colors.grey)),
                            SizedBox(width: 15),
                            Icon(Icons.calendar_today, color: Colors.orange),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        color: Colors.deepOrange,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 15),
                          child: Text(
                            'View',
                            style: TextStyle(
                                color: Colors.white, fontSize: width * .04),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.02),

              buildTransactionItem('DEBIT', '-\$50.45',
                  'Note: Payment for the rent', '15th Aug 2022', Colors.red),
              buildTransactionItem('CREDIT', '\$200.50',
                  'Note: Payment for the rent', '15th Aug 2022', Colors.green),
              buildTransactionItem('DEBIT', '-\$50.45',
                  'Note: Payment for the rent', '15th Aug 2022', Colors.red),
              buildTransactionItem('CREDIT', '\$200.50',
                  'Note: Payment for the rent', '15th Aug 2022', Colors.green),

              SizedBox(height: height * 0.04),

              // Support and Pay Now buttons
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Container(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset("lib/Assets/person.png"),
                        title: Text(
                          "Ben Oyeyemi",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "+2348055000990",
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset(0, 7),
                                  blurRadius: 5)
                            ],
                            color: Colors.deepOrangeAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                            size: width * 0.07,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          actionButton(
                              'SUPPORT', Colors.black, width, height * 1.2),
                          actionButton(
                            'PAY NOW',
                            tap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MessagingScreen()));
                            },
                            Color(0xFFFF7F27),
                            width,
                            height * 1.2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: height * 0.03),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTransactionItem(
      String type, String amount, String note, String date, Color amountColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
        ),
      ),
    );
  }

  Widget actionButton(String label, Color color, double width, double height,
      {VoidCallback? tap}) {
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
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
