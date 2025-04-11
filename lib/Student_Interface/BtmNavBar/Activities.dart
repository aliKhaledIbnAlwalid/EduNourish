import 'package:flutter/material.dart';

import '../Home/notifiactions_screen.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffcdc9cf),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.notifications_none_outlined, size: 30),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NeoNotificationsScreen(),
              ),
            );
          },
        ),
        actions: const [
          Image(
            image: AssetImage('assets/Intro_Screen_login/EduIcon.png'),
            height: 50,
            width: 50,
          ),
        ],
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffcdc9cf),
                Color(0xffe8e6e9),
              ],
            ),
          ),
        ),
       CategoryScreen(),
      ]),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {"title": "Party", "icon": Icons.public, "color":  Color(0xff98afb0)},
    {"title": "Trip", "icon": Icons.movie, "color":Color(0xff98afb0)},
    {"title": "Competitions", "icon": Icons.newspaper, "color":Color(0xff98afb0)},
    {
      "title": "Sports",
      "icon": Icons.sports_baseball,
      "color":Color(0xff98afb0)
    },
    {"title": "Travel", "icon": Icons.local_shipping, "color":   Color(0xff98afb0) },
    {"title": "Health", "icon": Icons.medical_services, "color": Color(0xff98afb0) },
    {"title": "Technology", "icon": Icons.lightbulb, "color":    Color(0xff98afb0)     },
    {"title": "Business", "icon": Icons.bar_chart, "color": Color(0xff98afb0)},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
    
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: categories.length, 
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            return CategoryItem(
              title: category['title'],
              icon: category['icon'],
              color: category['color'],
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color? color;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.grey,
        borderRadius: BorderRadius.circular(20),
 
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 32, color: Colors.black),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
