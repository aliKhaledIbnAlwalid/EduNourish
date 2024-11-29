// import 'package:flutter/material.dart';
//
// class MyChildScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF82D1FC),
//       appBar: AppBar(
//         title: Text('MY CHILD'),
//         // backgroundColor: Colors.lightBlue,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.notifications),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Container(
//         // color: Colors.lightBlue[100],
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Hi\nmario',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Hinted search text',
//                 border: OutlineInputBorder(),
//                 filled: true,
//                 fillColor: Colors.white,
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: GridView.count(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 16,
//                 mainAxisSpacing: 16,
//                 children: [
//                   _buildCard('\$10.75\nRem.Exp', Icons.money),
//                   _buildCard('attendance', Icons.calendar_today),
//                   _buildCard('food place', Icons.restaurant),
//                   _buildCard('grade', Icons.star),
//                   _buildCard('Exam', Icons.book),
//                   _buildCard('BUS', Icons.directions_bus),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildCard(String title, IconData icon) {
//     return Card(
//       color: Colors.lightBlue[200],
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: InkWell(
//         onTap: () {
//           // Handle tap
//         },
//         borderRadius: BorderRadius.circular(16),
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Icon(icon, size: 40),
//               SizedBox(height: 8),
//               Text(
//                 title,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }