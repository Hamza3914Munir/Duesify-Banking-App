import 'package:flutter/material.dart';

class GroupChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.white,
        ),
        title: Text(
          "Jennifer Lopez",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text("GROUP CHAT",style: TextStyle(color: Colors.white70),),
              style: TextButton.styleFrom(backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          )
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;
          return Stack(
            children: [
              Align(alignment: Alignment.topCenter,
                  child: Container(color: Colors.white70,margin: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Monday',style: TextStyle(color: Colors.grey,fontSize: 18),),
                  ),)),
              // Inside the LayoutBuilder
              Positioned(
                top: 50,
                bottom: 50, // Adjust the value to leave space for the input field
                left: 0,
                right: 0,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10), // Leave some space at the bottom
                  child: ListView(
                    children: [
                      _buildMessageCard(
                          "The price is AED 2000,\nwhere are you from?",
                          "9:41 AM",
                          true,
                          width),
                      _buildMessageCard(
                          "Is this picture real?", "9:41 AM", false, width),
                      _buildMessageCard(
                          "The price is AED 2000,\nwhere are you from?",
                          "9:41 AM",
                          true,
                          width),
                    ],
                  ),
                ),
              ),


              // Type message input at the bottom
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Type message...",
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.mic_rounded, color: Colors.grey),
                      SizedBox(width: 4),
                      Icon(Icons.emoji_emotions, color: Colors.grey),
                      SizedBox(width: 4),
                      Icon(Icons.camera_alt_rounded, color: Colors.grey),
                      SizedBox(width: 4),
                      Card(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.send, color: Colors.white),
                      ), color: Colors.deepOrange,),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildMessageCard(
      String message, String time, bool isCurrentUser, double width) {
    return Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        width: width * 0.9,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment:
              isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            if (!isCurrentUser) _buildUserAvatar(), // Show avatar for receiver
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: isCurrentUser ? Colors.orange : Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: isCurrentUser
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Text(
                      message,
                      style: TextStyle(
                          color: isCurrentUser ? Colors.white : Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        time,
                        style: TextStyle(
                            color:
                                isCurrentUser ? Colors.white : Colors.black54,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isCurrentUser) CircleAvatar(
      radius: 20,
      backgroundImage:
      AssetImage('lib/Assets/hamza.png'), // Replace with actual image path
    ) // Show avatar for sender
          ],
        ),
      ),
    );
  }

  Widget _buildUserAvatar() {
    return CircleAvatar(
      radius: 20,
      backgroundImage:
          AssetImage('lib/Assets/person.png'), // Replace with actual image path
    );
  }
}
