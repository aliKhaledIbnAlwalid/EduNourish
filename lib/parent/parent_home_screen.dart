import 'package:edunourish/parent/my_child_screen.dart';
import 'package:flutter/material.dart';

class ParentHomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF72B7DC),
      body: Column(
        children: [
          // School News Section
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Color(0xFF72B7DC),
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                  image: AssetImage(
                      'assets/parent/images/School_News.png'), // Replace with your asset path
                  // fit: BoxFit.fitWidth,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Buttons Section
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(40),
              crossAxisSpacing: 35,
              mainAxisSpacing: 35,
              children: [
                _buildIconCard(
                    label: 'Teacher',
                    imagePath: 'assets/parent/images/Teacher.png',
                    Top: -60,
                    Left: 20,
                    Bottom: 40,
                    Right: 20),
                InkWell(
                  // onTap: (){
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => MyChildScreen(), // Navigate to MyChildScreen
                  //     ),
                  //   );
                  // },
                  child: _buildIconCard(
                      label: 'My child',
                      imagePath: 'assets/parent/images/Student.png',
                      Top: -50,
                      Left: 20,
                      Bottom: 40,
                      Right: 20),
                ),
                _buildIconCard(
                    label: 'Restaurant',
                    imagePath: 'assets/parent/images/Toast.png',
                    Top: 0,
                    Left: 20,
                    Bottom: 40,
                    Right: 20),
                _buildIconCard(
                    label: 'Payment',
                    imagePath: 'assets/parent/images/PayPal.png',
                    Top: 10,
                    Left: 20,
                    Bottom: 50,
                    Right: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildIconCard(
    {required String label,
    required String imagePath,
    required double Top,
    required double Left,
    required double Bottom,
    required double Right}) {
  return Stack(
    clipBehavior:
        Clip.none, // Allows elements to go outside the bounds of the container
    children: [
      // Background Card
      Container(
        decoration: BoxDecoration(
          color: Color(0xFF82D1FC),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(2, 2),
            ),
          ],
        ),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      // Positioned Image
      Positioned(
        top: Top, // Adjust to make the image exceed the container
        left: Left,
        bottom: Bottom,
        right: Right, // Adjust horizontal alignment
        child: Image.asset(
          imagePath,
          fit: BoxFit.fitHeight,
          height: 100,
          width: 100,
        ),
      ),
    ],
  );
}
