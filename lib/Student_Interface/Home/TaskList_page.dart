import 'package:flutter/material.dart';

import '../List/home_drawer.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});
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
        drawer: const HomeDrawer(),
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
            children: [],
            // Top bar: "STUDENT PROFILE" on the left, an icon on the right
          )
        ]));
  }
}





























//           const Positioned(
//             top: 16,
//             right: 16,
//             child: Icon(Icons.notifications, color: Colors.red),
//           ),
