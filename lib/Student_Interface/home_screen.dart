import 'package:flutter/material.dart';

import 'Home/Exams.dart';
import 'Home/TaskList_page.dart';
import 'Home/home_page.dart';
import 'Home/profile_page.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const TaskList(),
    const Exams(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffe8ba5c),
          elevation: 0,
          selectedLabelStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold), // Increase selected label size
          unselectedLabelStyle:
              const TextStyle(fontSize: 14), // Increase unselected label size
          onTap: _navigateBottomBar,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/student/TaskList.png",
                width: 24, // Adjust size as needed
                height: 24,
              ),
              label: 'Tasks',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                size: 30,
              ),
              label: 'Exams',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}





























// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'Home/Exams.dart';
// import 'Home/profile_page.dart';
// import 'Home/TaskList.dart';
// import 'Home/settings_page.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final PageController _pageController = PageController();
//   int _selectedIndex = 2; // To track the selected tab

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       extendBody: true, // Ensures bottom bar blends with gradient
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.notifications_none_outlined, size: 30),
//             onPressed: () {},
//           )
//         ],
//         leading: IconButton(
//           icon: const Icon(Icons.menu, size: 30),
//           onPressed: () {},
//         ),
//       ),
//       body: Stack(
//         children: [
//           Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color(0xfffacf74), // Top color
//                   Color(0xffe8ba5c), // Bottom color
//                 ],
//               ),
//             ),
//           ),
//           Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 120, right: 20, left: 20),
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(25),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(25),
//                       color: Colors.orange,
//                     ),
//                     height: 250,
//                     child: PageView.builder(
//                       controller: _pageController,
//                       itemCount: 10,
//                       scrollDirection: Axis.horizontal,
//                       itemBuilder: (context, index) {
//                         return Padding(
//                           padding: const EdgeInsets.all(10),
//                           child: Container(
//                             width: 350,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(20),
//                               color: Colors.yellow,
//                               boxShadow: const [
//                                 BoxShadow(
//                                   color: Colors.black12,
//                                   blurRadius: 5,
//                                   spreadRadius: 2,
//                                 )
//                               ],
//                             ),
//                             child: Center(
//                               child: Text(
//                                 'News Item $index',
//                                 style: const TextStyle(
//                                     fontSize: 20, color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ),

//               // Page Indicator
//               const SizedBox(height: 10),
//               SmoothPageIndicator(
//                 controller: _pageController,
//                 count: 10,
//                 effect: const ExpandingDotsEffect(
//                   dotWidth: 8,
//                   dotHeight: 8,
//                   activeDotColor: Colors.orange,
//                   dotColor: Colors.grey,
//                 ),
//               ),

//               // Feature Cards
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildFeatureCard("assets/student/exam.png", "Exams"),
//                     _buildFeatureCard(
//                         "assets/student/Calendar.png", "Attendance"),
//                   ],
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildFeatureCard("assets/student/Toast.png", "Restaurant"),
//                     _buildFeatureCard(
//                         "assets/student/TaskList.png", "Task List"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//         child: GNav(
//             gap: 8,
//             backgroundColor: Colors.transparent,
//             activeColor: Colors.black,
//             color: Colors.black,
//             padding: const EdgeInsets.all(12),
//             tabBackgroundColor: Colors.white.withOpacity(0.7),
//             tabs: [
//               const GButton(
//                 icon: Icons.settings,
//                 text: 'Settings',
//                 textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 iconSize: 30,
//               ),
//               GButton(
//                 icon: Icons.circle,
//                 iconColor: Colors.transparent,
//                 leading: SizedBox(
//                   width: 30,
//                   height: 30,
//                   child: Image.asset("assets/student/TaskList.png"),
//                 ),
//                 text: "Tasks",
//                 textStyle:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 iconSize: 30,
//               ),
//               const GButton(
//                 icon: Icons.book,
//                 text: 'Exams',
//                 textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 iconSize: 30,
//               ),
//               const GButton(
//                 icon: Icons.person,
//                 text: 'Profile',
//                 textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 iconSize: 30,
//               ),
//             ],
//             selectedIndex: _selectedIndex,
//             onTabChange: (index) {
//               WidgetsBinding.instance.addPostFrameCallback((_) {
//                 if (index == 0) {
//                   showAddBottomSheet();
//                 } else {
//                   setState(() {
//                     _selectedIndex =
//                         index; // Switch tabs instead of replacing screen
//                   });
//                 }
//               });
//             }),
//       ),
//     );
//   }

//   Widget _buildFeatureCard(String imagePath, String title) {
//     return Container(
//       width: 170,
//       height: 170,
//       decoration: BoxDecoration(
//         color: const Color(0xfff1f378),
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(imagePath, height: 130),
//           Text(title,
//               style:
//                   const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//         ],
//       ),
//     );
//   }

//   showAddBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(25.0), // Adjust the radius for curviness
//         ),
//       ),
//       builder: (context) {
//         return Container(
//           padding: const EdgeInsets.all(20),
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.vertical(
//               top: Radius.circular(25.0),
//             ),
//             // Adjust color as needed
//           ),
//           child: const SettingsPage(), // Your content here
//         );
//       },
//     );
//   }
// }