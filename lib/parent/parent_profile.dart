import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class ParentProfile extends StatelessWidget {
  const ParentProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
           width: double.infinity,
            child: Image.asset(
              'assets/parent/Ellipse 11.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.25,
            // width: MediaQuery.of(context).size.width,
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/parent/Ellipse 10.png',
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                // Move the CircleAvatar to the desired position
                Positioned(
                  top:
                      140, // Adjust this to match the red circle's vertical position
                  left: MediaQuery.of(context).size.width / 2 -
                      50, // Center horizontally
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/parent/Ellipse 12.png'),
                  ),
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ListView(
                          children: const [
                            ProfileDetail(label: "YourName", value: "Mario Samy"),
                            ProfileDetail(
                                label: "Email", value: "Mario Samy@376.com"),
                            ProfileDetail(label: "Phone", value: "012569247348"),
                            ProfileDetail(label: "Your Job", value: "Engineer"),
                            ProfileDetail(label: "BirthDay", value: "7/7/2000"),
                            ProfileDetail(
                                label: "Your Child Name", value: "Piple"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            bottomNavigationBar: Container(
             
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
                child: GNav(
                  backgroundColor: const Color(0xff7ABED1),
                  color: Colors.white,
                  activeColor: Colors.white,
                  tabBackgroundColor: Colors.grey.shade600,
                  padding: const EdgeInsets.all(16),
                  gap: 8,
                  tabs: const [
                    GButton(
                      icon: Icons.settings,
                      text: 'Settings',
                    ),
                    GButton(
                      icon: Icons.paypal,
                      text: 'Paypal',
                    ),
                    GButton(
                      icon: Icons.home_outlined,
                      text: 'Home',
                    ),
                    GButton(
                      icon: Icons.directions_bus,
                      text: 'Bus',
                    ),
                    GButton(
                      icon: Icons.supervised_user_circle,
                      text: 'User',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20, // Adjust this value to control vertical position
            left: 10, // Controls the horizontal position from the left
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.format_list_bulleted_outlined, // Icon for top-left
                color: Colors.black, // You can adjust the color
                size: 30, // Icon size
              ),
            ),
          ),
          Positioned(
            top: 20, // Adjust this value to control vertical position
            right: 10, // Controls the horizontal position from the right
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_outlined, // Icon for top-right
                color: Colors.black, // You can adjust the color
                size: 30, // Icon size
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileDetail extends StatelessWidget {
  final String label;
  final String value;

  const ProfileDetail({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.black87,
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
