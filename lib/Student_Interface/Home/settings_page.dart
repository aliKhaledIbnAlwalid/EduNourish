import 'package:edunourish/Student_Interface/Home/TaskList_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5, // Add height
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Row(
              children: [
                Icon(Icons.dark_mode_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Themes',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TaskList()),
                );
                // Add your onTap functionality here
              },
              child: const Row(
                children: [
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              ),
            ),
            const Row(
              children: [
                Icon(Icons.privacy_tip_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Privacy',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.security_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Security',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.help_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Help & Support',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.info_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'About Us',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 3,
                ),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
