import 'package:flutter/material.dart';

import 'group_chat.dart';
import 'messages.dart';

class MemberChatsScreen extends StatelessWidget {
  const MemberChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                pendingApprovalItem(
                    context, 'Hamza Ali', '\$2250', 'lib/Assets/hamza.png'),
                pendingApprovalItem(
                    context, 'Sarah Connor', '\$3250', 'lib/Assets/person.png'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  actionButton('MEMBERS', Colors.black, width, height),
                  actionButton(
                    'GROUP CHAT',
                    Color(0xFFFF7F27),
                    width,
                    height,
                    tap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => GroupChatScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget pendingApprovalItem(BuildContext context, String name, String amount,
      String avatarImage) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 15),
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
            CircleAvatar(
              backgroundColor: Colors.deepOrange,radius: 10,
              child: Text('1', style: TextStyle(color: Colors.white)),
            ),
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
}
