import 'package:flutter/material.dart';

import '../List/home_drawer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none_outlined, size: 30),
              onPressed: () {},
            )
          ],
        ),
       drawer:   const HomeDrawer(),
        body: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfffacf74), // Top color
                  Color(0xffe8ba5c), // Bottom color
                ],
              ),
            ),
          ),
          Column(
            children: [
              // Top bar: "STUDENT PROFILE" on the left, an icon on the right
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                child:

                    // Scrollable area (if you expect more content)
                    SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 100),

                      // Profile photo
                      Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/boy.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Student Name
                      const Text(
                        'Mario Samy',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            InfoRow(label: 'Name', value: 'Mario Samy'),
                            InfoRow(label: 'Age', value: '10'),
                            InfoRow(label: 'Weight', value: '35'),
                            InfoRow(label: 'Class', value: 'A-2'),
                            InfoRow(label: 'Phone', value: '0122554239'),
                            InfoRow(label: 'Gender', value: 'male'),
                            InfoRow(label: 'Grade', value: 'Excellent'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}

class InfoRow extends StatelessWidget {
  final String label;
  final String value;

  const InfoRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,

      // Slight space between rows
      margin: const EdgeInsets.only(bottom: 10),
      // Light-blue background
      decoration: BoxDecoration(
        color: const Color(0xFFD2F1FF), // approximate baby-blue
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        //dense: true,
        title: Text(
          '$label: $value',
          style: const TextStyle(
            fontSize: 23,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});


  @override
  Widget build(BuildContext context) => const Drawer();
}
































//           const Positioned(
//             top: 16,
//             right: 16,
//             child: Icon(Icons.notifications, color: Colors.red),
//           ),
