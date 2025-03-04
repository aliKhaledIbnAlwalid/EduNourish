import 'package:flutter/material.dart';

import 'teachers_info.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            width: double.infinity,
            height: 150,
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/boy.png'),
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Mario Samy',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const Text(
            'MarioSamy@gamil.com',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            color: Colors.black,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.home, size: 30, color: Colors.black,),
            title: const Text(
              'Home',
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person, size: 30, color: Colors.black,),
            title: const Text(
              'Teachers Info',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color:Colors.black,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TeachersInfo()),
              );
            },
          ),
        ],
      ),
    );
  }
}
