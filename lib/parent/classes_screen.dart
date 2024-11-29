// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
//
// class ClassesScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFA4D4EF),
//         leading: IconButton(
//           icon: Icon(Icons.format_list_bulleted_outlined, color: Colors.black),
//           onPressed: (){},
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Container(
//         color: Color(0xFFA4D4EF),
//         padding: const EdgeInsets.symmetric(horizontal: 16,),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Search Box
//               Center(
//                 child: const Padding(
//                   padding: EdgeInsets.only(left: 16, top: 0 , bottom: 32),
//                   child: Text(
//                     'classes',
//                     style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(30),
//                 ),
//                 child: Row(
//                   children: const [
//                     Icon(Icons.menu, color: Colors.black),
//                     SizedBox(width: 16,),
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Hinted search text",
//                           border: InputBorder.none,
//                         ),
//                       ),
//                     ),
//                     Icon(Icons.search, color: Colors.black),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//
//               // Subject Section
//               const Text(
//                 "subject",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 150,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: Row(
//                       // crossAxisAlignment: CrossAxisAlignment.stretch,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: const [
//                         Text(
//                           "Math",
//                           style: TextStyle(
//                             fontSize: 40,
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                         Image(
//                           image: AssetImage('assets/classes_screen/math_image.png'),
//                           height: 40,
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   Expanded(
//                     child: Container(
//                       height: 100,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           "Science",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//
//               // Class Schedule Section
//               const Text(
//                 "class schedule",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: DataTable(
//                   columns: const [
//                     DataColumn(label: Text("MON")),
//                     DataColumn(label: Text("TUE")),
//                     DataColumn(label: Text("WED")),
//                     DataColumn(label: Text("THU")),
//                     DataColumn(label: Text("SAT")),
//                   ],
//                   rows: [
//                     DataRow(cells: _buildCells(["math", "english", "arabic", "RE", "PE"])),
//                     DataRow(cells: _buildCells(["science", "math", "english", "arabic", "ICT"])),
//                     DataRow(cells: _buildCells(["ICT", "science", "math", "english", "arabic"])),
//                     DataRow(cells: _buildCells(["RE", "ICT", "science", "math", "english"])),
//                     DataRow(cells: _buildCells(["break", "break", "break", "break", "break"])),
//                     DataRow(cells: _buildCells(["science", "math", "english", "RE", "PE"])),
//                     DataRow(cells: _buildCells(["math", "english", "science", "arabic", "PE"])),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//
//               // Bus Schedules
//               const Text(
//                 "Bus schedules",
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               Row(
//                 children: const [
//                   Text(
//                     "Departure time  7:30",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                   Spacer(),
//                   Text(
//                     "arrival time  3:30",
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: Container(
//         color: Color(0xFFA4D4EF),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 12.0),
//           child: GNav(
//             backgroundColor: Color(0xFFA4D4EF),
//             color: Colors.white,
//             activeColor: Colors.black,
//             tabBackgroundColor: Color(0xFF70C1F3),
//             padding: EdgeInsets.all(16),
//             gap: 8,
//             tabs: const [
//               GButton(icon: Icons.settings, text: 'Settings',iconColor: Colors.black,),
//               GButton(icon: Icons.paypal , text: 'Paypal',iconColor: Colors.black,),
//               GButton(icon: Icons.home_outlined , text: 'Home',iconColor: Colors.black,),
//               GButton(icon: Icons.directions_bus , text: 'Bus',iconColor: Colors.black,),
//               GButton(icon: Icons.supervised_user_circle, text: 'User',iconColor: Colors.black,),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<DataCell> _buildCells(List<String> values) {
//     return values.map((value) => DataCell(Text(value))).toList();
//   }
// }
