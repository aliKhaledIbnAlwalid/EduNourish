import 'package:edunourish/login/login_screen.dart';
import 'package:edunourish/parent/parent_home_screen.dart';

import 'package:edunourish/parent_home.dart';
import 'package:flutter/material.dart';

class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox( 
            height: MediaQuery.of(context).size.height*0.2,
            width: double.infinity,
            child: GestureDetector(child: Container(color: Colors.green,
            child: const Center(
              child: Text('Parent',style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),),
            ),
            ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ParentHomeScreen(),
                      ),
                    
            );}
          ),),
          const SizedBox(height: 20,),
          SizedBox( 
            height: MediaQuery.of(context).size.height*0.2,
            width: double.infinity,
            child: GestureDetector(child: Container(color: Colors.green,
            child: const Center(
              child: Text('Student',style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),),
            ),
            ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    
            );}
          ),),
          const SizedBox(height: 20,),
           SizedBox( 
            height: MediaQuery.of(context).size.height*0.2,
            width: double.infinity,
            child: GestureDetector(child: Container(color: Colors.green,
            child: const Center(
              child: Text('Teacher',style: TextStyle(
                color: Colors.white,
                fontSize: 30
              ),),
            ),
            ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    
            );}
          ),),
        ],
      ),

    );
  }}
//     return Scaffold(
//       backgroundColor: const Color(0xFFCBEFF4),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Row(
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const LoginScreen(),
//                       ),
//                     );
//                   },
//                   child: Image.asset(
//                     'assets/teacherChoice.png',
//                     height: MediaQuery.of(context).size.height * 0.5,
//                     width: MediaQuery.of(context).size.width * 0.5,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ParentHome(),
//                       ),
//                     );
//                   },
//                   child: Image.asset(
//                     'assets/parentChoice.png',
//                     height: MediaQuery.of(context).size.height * 0.5,
//                     width: MediaQuery.of(context).size.width * 0.5,
//                   ),
//                 )
//               ],
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => const LoginScreen(),
//                   ),
//                 );
//               },
//               child: Image.asset(
//                 'assets/boy.png',
//                 height: MediaQuery.of(context).size.height * 0.5,
//                 width: MediaQuery.of(context).size.width * 0.5,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
