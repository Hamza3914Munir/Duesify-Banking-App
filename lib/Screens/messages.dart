import 'package:flutter/material.dart';
import 'member_chats.dart';
import 'member_messages.dart';

class MessagingScreen extends StatefulWidget {
  @override
  _MessagingScreenState createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int _selectedTabIndex = 0; // To track the selected tab

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // Add listener to track tab changes
    _tabController.addListener(() {
      setState(() {
        _selectedTabIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFFF7F27),
        elevation: 0,
        leading: Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
          shadows: [
            Shadow(
              blurRadius: 4.0,
              color: Colors.black.withOpacity(0.5),
              offset: Offset(0, 4.0),
            ),
          ],
        ),
        centerTitle: true,
        title: Text(
          'MESSAGES',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 18,
            shadows: [
              Shadow(
                blurRadius: 4.0,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 4.0),
              ),
            ],
          ),
        ),
        actions: _selectedTabIndex == 0 // Show action only on the first tab
            ? [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Colors.black,
              child: Text('12', style: TextStyle(color: Colors.white)),
            ),
          ),
        ]
            : [Container()], // If it's the "New Message" tab, there are no actions
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(130), // Adjust the height as needed
          child: Column(
            children: [
              Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Member Search...',
                      prefixIcon: Icon(Icons.search, color: Colors.orange),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        vertical: height * 0.015,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 48,
                width: width,
                child: TabBar(
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'All Chats',
                    ),
                    Tab(
                      text: 'New Message',
                    ),
                  ],
                  labelStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white70,
                  indicatorColor: Colors.transparent, // Hide the default indicator
                ),
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          MemberChatsScreen(),
          SendNotificationScreen(), // Placeholder for New Message tab
        ],
      ),
    );
  }
}
