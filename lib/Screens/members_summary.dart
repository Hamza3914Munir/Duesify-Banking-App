import 'package:duesify_banking_app/Screens/new_member.dart';
import 'package:flutter/material.dart';

class MembersSummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('ALL MEMBERS',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
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
          size: width * .09,
          shadows: [
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.32,
                  width: width,
                  color: Color(0xFFFF7F27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height * 0.02),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0, right: 15),
                        child: Row(
                          children: [
                            Text(
                              "Summary",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.06,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Text(
                              "ALL ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w700),
                            ),
                            Transform.rotate(
                              angle: -90 * 3.14 / 180,
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.white,
                                size: width * .04,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        padding: EdgeInsets.all(7),
                        margin: EdgeInsets.symmetric(horizontal: 15),
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
                        margin: EdgeInsets.symmetric(horizontal: 15),
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
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
                Positioned(
                  bottom: -20,
                  left: 10,
                  right: 10,
                  child: Card(
                    elevation: 5,
                    color: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      height: 50,
                      width: width,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Member Search...',
                          prefixIcon:
                          Icon(Icons.search, color: Colors.orange),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: height * 0.015,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * .05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sorted by:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text("Owned Amount",
                                style: TextStyle(color: Colors.deepOrange)),
                            Spacer(),
                            Transform.rotate(
                              angle: -90 * 3.14 / 180,
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.deepOrange,
                                size: width * .04,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Arrangement:",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Text("Highest to Lowest",
                                style: TextStyle(color: Colors.deepOrange)),
                            Spacer(),
                            Transform.rotate(
                              angle: -90 * 3.14 / 180,
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                color: Colors.deepOrange,
                                size: width * .04,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Member’s Info",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Spacer(),
                  Text("Total Owed", style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            // Member List
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                pendingApprovalItem(
                    context, 'Jamal Adams', '\$250', 'lib/Assets/person.png'),
                pendingApprovalItem(
                    context, 'Hamza Ali', '\$2250', 'lib/Assets/hamza.png'),
                pendingApprovalItem(
                    context, 'Sarah Connor', '\$3250', 'lib/Assets/person.png'),
              ],
            ),
            SizedBox(height: 20),
            // Button Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  actionButton('SEND REMINDER', Colors.black, width, height),
                  actionButton(
                    'ADD NEW MEMBER',
                    Color(0xFFFF7F27),
                    width,
                    height,
                    tap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewMemberScreen()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: width * .07,)
          ],
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
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget pendingApprovalItem(BuildContext context, String name, String amount,
      String avatarImage) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              radius: width * 0.07,
              backgroundImage: AssetImage(avatarImage),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text("Total Owed: $amount",
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
            Spacer(),
            Text(amount,
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepOrange)),
          ],
        ),
      ),
    );
  }
}
