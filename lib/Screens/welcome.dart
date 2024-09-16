import 'package:duesify_banking_app/Screens/profile.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFFFF7F27),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height * 0.2,
                  width: width,
                  color: Color(0xFFFF7F27),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.white, fontSize: width * 0.05),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              child: Image.asset('lib/Assets/avatar.png'),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProfileScreen()));
                              },
                            ),
                            SizedBox(width: width * 0.01),
                            Text(
                              'Johnson Estate',
                              style: TextStyle(
                                fontSize: width * 0.05,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.white70,
                                      spreadRadius: 5,
                                      blurRadius: 10)
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
                          ],
                        ),
                      )
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
                            color: Colors.white),
                        height: 50,
                        width: width,
                        child: TextField(
                            decoration: InputDecoration(
                          hintText: 'Member Search...',
                          prefixIcon: Icon(Icons.search, color: Colors.orange),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            vertical: height * 0.015,
                          ),
                        )),
                      ),
                    )),
              ],
            ),
            SizedBox(height: height * 0.04),

            // Outstanding Balance
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Icon(Icons.message, color: Colors.deepOrangeAccent),
                        Text("Messages")
                      ],
                    ),
                  ),
                ),
                SizedBox(width: width * 0.01),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Color(0XFF40AFD2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Text(
                          'Outstanding:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.04,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$578,789.00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: width * 0.05,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
            SizedBox(height: height * 0.03),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                children: [
                  // CREDIT Container
                  GestureDetector(
                    onTap: () {
                      // Navigate to Credit Transaction
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0XFFFF7F27),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Dollar icon at the top-left
                          Positioned(
                              top: 16,
                              left: 16,
                              child: Transform.rotate(
                                angle: 45 * 3.1415926535 / 180,
                                // Rotate the container by 90 degrees
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Transform.rotate(
                                    angle: -45 * 3.1415926535 / 180,
                                    child: Image.asset(
                                      'lib/Assets/dollar.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              )),
                          // Credit Text at the bottom-left
                          Positioned(
                            bottom: 50,
                            left: 16,
                            child: Row(
                              children: [
                                Text(
                                  'CREDIT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.15,
                                ),
                                Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.08),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 16,
                            child: Text(
                              'Transaction',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Credit Transaction
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFFCE91FF),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Dollar icon at the top-left
                          Positioned(
                              top: 16,
                              left: 16,
                              child: Transform.rotate(
                                angle: 45 * 3.1415926535 / 180,
                                // Rotate the container by 90 degrees
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Transform.rotate(
                                    angle: -45 * 3.1415926535 / 180,
                                    child: Image.asset(
                                      'lib/Assets/debit.png',
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                ),
                              )),
                          // Credit Text at the bottom-left
                          Positioned(
                            bottom: 50,
                            left: 16,
                            child: Row(
                              children: [
                                Text(
                                  'DEBIT',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.15,
                                ),
                                Text(
                                  "-",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.08),
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 16,
                            child: Text(
                              'Transaction',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Credit Transaction
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF01CD88),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Dollar icon at the top-left
                          Positioned(
                              top: 16,
                              left: 16,
                              child: Transform.rotate(
                                angle: 45 * 3.1415926535 / 180,
                                // Rotate the container by 90 degrees
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Transform.rotate(
                                    angle: -45 * 3.1415926535 / 180,
                                    child: Image.asset(
                                      'lib/Assets/member.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              )),
                          // Credit Text at the bottom-left
                          Positioned(
                            bottom: 50,
                            left: 16,
                            child: Text(
                              'MEMBERS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 16,
                            child: Text(
                              'Management',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Credit Transaction
                    },
                    child: Container(
                      width: 180,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFFDA158B),
                        image: DecorationImage(
                          image: AssetImage('lib/Assets/background.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Dollar icon at the top-left
                          Positioned(
                              top: 16,
                              left: 16,
                              child: Transform.rotate(
                                angle: 45 * 3.1415926535 / 180,
                                // Rotate the container by 90 degrees
                                child: Container(
                                  padding: EdgeInsets.all(7),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Transform.rotate(
                                    angle: -45 * 3.1415926535 / 180,
                                    child: Image.asset(
                                      'lib/Assets/deposit.png',
                                      width: 40,
                                      height: 40,
                                    ),
                                  ),
                                ),
                              )),
                          // Credit Text at the bottom-left
                          Positioned(
                            bottom: 50,
                            left: 16,
                            child: Text(
                              'DEPOSIT ALERT',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 30,
                            left: 16,
                            child: Text(
                              'Management',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height * 0.03),
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
                    'PREMIUM',
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
                    'LOG OUT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.03),
          ],
        ),
      ),
    );
  }
}
