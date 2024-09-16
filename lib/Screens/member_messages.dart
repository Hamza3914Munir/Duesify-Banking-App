import 'package:flutter/material.dart';

class SendNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.02),
                  // Title input field
                  Text(
                    'Title',
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(height: height * 0.01),
                  _buildTextField("enter title", 1),

                  SizedBox(height: height * 0.03),
                  // Message input field
                  Text(
                    'Message',
                    style: TextStyle(color: Colors.orange),
                  ),
                  SizedBox(height: height * 0.01),
                  _buildTextField("enter message", 5),

                  SizedBox(height: height * 0.05),
                  // Attach File Section
                  Row(
                    children: [
                      Text(
                        'Attach File ',
                        style: TextStyle(color: Colors.orange),
                      ),
                      Text(
                        "(Optional)",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Spacer(),
                      Text(
                        "PDF, JPEG, PNG only",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.02),
                  _buildAttachFileSection(),

                  SizedBox(height: height * 0.02),
                  _buildRadioButtonSection(),

                  SizedBox(height: height * 0.04),
                  // Send Now Button
                  Align(
                    alignment: Alignment.center,
                    child: _buildSendButton(width, height),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildTextField(String hint, int line) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        maxLines: line,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget _buildAttachFileSection() {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.redAccent),
        color: Colors.red[50],
      ),
      child: Row(
        children: [
          Stack(clipBehavior: Clip.none,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('lib/Assets/hamza.png'),
                    // Replace with actual image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 60,
                left: 20,
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
              ),)
            ],
          ),
          SizedBox(width: 10),
          Stack(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('lib/Assets/person.png'),
                    // Replace with actual image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 50,
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
                ),)
            ],
          ),
          Spacer(),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text('Browse',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }

  Widget _buildRadioButtonSection() {
    return Column(
      children: [
        RadioListTile(activeColor: Colors.deepOrange,
          title: Text('All Members'),
          value: 1,
          groupValue: 1, // You can manage groupValue dynamically
          onChanged: (value) {},
        ),
        RadioListTile(
          title: Text('Owing Members'),
          value: 2,
          groupValue: 1,
          onChanged: (value) {},
        ),
        RadioListTile(
          title: Text('Not Owing Members'),
          value: 3,
          groupValue: 1,
          onChanged: (value) {},
        ),
        RadioListTile(
          title: Text('Selected Members'),
          value: 4,
          groupValue: 1,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildSendButton(double width, double height) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: width * 0.9,
      height: height * 0.1,
      decoration: BoxDecoration(),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        ),
        child: Text(
          'SEND NOW',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
