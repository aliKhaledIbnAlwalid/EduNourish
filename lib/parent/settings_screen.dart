import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Settings_Screen';
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button action
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: InkWell(
              onTap: () {
                // Handle logout action
              },
              borderRadius: BorderRadius.circular(50),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  children: [
                    Text(
                      'Log Out',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.logout,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage:
            AssetImage('assets/parent/images/ParentImage.png'),
          ),
          SizedBox(height: 10),
          Text(
            'HI',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Mohamed Hamdy',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                children: [
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Icon(Icons.dark_mode),
                    title: Text('Dark Mode'),
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {
                        // Handle dark mode toggle
                      },
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications),
                    title: Text('Notifications'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Notifications navigation
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip),
                    title: Text('Privacy'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Privacy navigation
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text('Security'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Security navigation
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.account_box),
                    title: Text('Account'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Account navigation
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text('Help'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      // Handle Help navigation
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFF5A8FD1),
    );
  }
}

