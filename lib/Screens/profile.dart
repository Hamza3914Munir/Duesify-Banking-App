import 'package:flutter/material.dart';

import 'new_record.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "PROFILE",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: Color(0xFFFF7F27),
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: height * 0.4,
                  color: Color(0xFFFF7F27),
                ),
                Positioned(
                  top: height * 0.03,
                  child: InkWell(onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewRecordScreen()));
                  },
                    child: CircleAvatar(
                      radius: width * 0.18,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: width * 0.17,
                        backgroundColor: Colors.orange,
                        child: CircleAvatar(
                          radius: width * 0.16,
                          backgroundColor: Color(0xFFFFE0B2),
                          child: Icon(Icons.person,
                              color: Colors.orange, size: width * 0.15),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.2,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    padding: EdgeInsets.all(5),
                    child: Icon(
                      Icons.edit,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),
                Positioned(
                  top: height * 0.25,
                  child: Column(
                    children: [
                      Text(
                        "Benjamin Oyeyemi",
                        style: TextStyle(
                          fontSize: width * 0.06,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "+2348055000990",
                        style: TextStyle(
                          fontSize: width * 0.045,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                // Adjusted positioning for the first text field
                Positioned(
                  top: height * 0.34,
                  child: Container(
                    width: width * 1,
                    child: ProfileDetail(
                      icon: Icons.email,
                      title: 'Email',
                      subtitle: 'savestify@gmail.com',
                      onEdit: () {},
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.08), // Adjust the spacing accordingly
            ProfileDetail(
              icon: Icons.calendar_today,
              title: 'Date of Birth',
              subtitle: '15th August, 1997',
              onEdit: () {},
            ),
            ProfileDetail(
              icon: Icons.lock,
              title: 'Password',
              subtitle: '*********',
              onEdit: () {},
            ),
            ProfileDetail(
              icon: Icons.location_on,
              title: 'Address',
              subtitle: '123, Billing Way. New York',
              onEdit: () {},
            ),
            ProfileDetail(
              icon: Icons.flag,
              title: 'Country',
              subtitle: 'United State',
              onEdit: () {},
            ),
            SizedBox(height: height * 0.04),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Handle Premium action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: height * 0.02),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'REMOVE ADS',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Handle Help action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFFF7F27),
                    padding: EdgeInsets.symmetric(
                        horizontal: width * 0.1, vertical: height * 0.02),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'SHARE APP',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Container(padding: EdgeInsets.all(8),
              width: width * .9,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.withOpacity(.5),
                        blurRadius: 2,
                        spreadRadius: 2,
                        offset: Offset(1, 4))
                  ]),
              child: Text(
                'Download More Awesome Apps',textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: width * .045),
              ),
            ),
            SizedBox(height: height * 0.03),
          ],
        ),
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onEdit;

  const ProfileDetail({
    required this.icon,
    required this.title,
    required this.onEdit,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.05, vertical: height * 0.01),
      child: Card(
        color: Colors.white,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: CircleAvatar(
              backgroundColor: Colors.grey[400],
              child: Icon(icon, color: Colors.grey[200])),
          title: Text(
            title,
            style: TextStyle(color: Colors.grey),
          ),
          subtitle: Text(subtitle),
          trailing: TextButton(
            onPressed: onEdit,
            child: Text('Edit', style: TextStyle(color: Colors.orange)),
          ),
        ),
      ),
    );
  }
}
