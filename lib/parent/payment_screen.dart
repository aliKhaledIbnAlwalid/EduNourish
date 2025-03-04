import 'package:edunourish/parent/bus_screen.dart';
import 'package:edunourish/parent/settings_screen.dart';
import 'package:edunourish/parent/parent_home.dart';
import 'package:edunourish/parent/parent_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

int _selectedIndex =0;

// remember , when we the user start typing his information may be face a problem
class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjust body when keyboard appears
      backgroundColor: const Color(0xFFB4DFEB),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              bottom: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Center(
                child: Text(
                  'Payment data',
                  style: TextStyle(fontSize:24 ,color: Colors.black,fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                'Total price',
                style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 8),
              const Text(
                '\$ 2280.00',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 21),
              const Text(
                'payment method',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentMethodButton(label: 'Credit', isSelected: true),
                  PaymentMethodButton(label: 'Debit', isSelected: false),
                  PaymentMethodButton(label: 'paypal', isSelected: false),
                ],
              ),
              const SizedBox(height: 21),
              TextField(
                obscureText: true,  // Makes the input characters appear as asterisks
                decoration: InputDecoration(
                  labelText: 'Card number',
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.asset(
                          'assets/payment_screen/Mastercard.png',
                          width: 45,
                        ),
                      ),
                      const SizedBox(width: 20,)
                    ],
                  ),
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,  // Ensures only numeric input
              ),
              const SizedBox(height: 21),
              const Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'valid until',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'cvv',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 21),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'card holder',
                  hintText: 'Your name and username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 21),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Save card data for future payment',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Switch(value: true, onChanged: (value) {}),
                ],
              ),
              const SizedBox(height: 40,),
              GestureDetector(
                onTap: () {

                },
                child: Center(
                  child: Container(
                    width: 145, // Make the button full-width
                    height: 48, // Set button height
                    decoration: BoxDecoration(
                      color: Colors.blue, // Button color
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Pay',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 18, // Font size
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.white, // the color for the container before the padding
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
      //     child: GNav(
      //       backgroundColor: Colors.red,  // the background color for the padding part consists of all items
      //       // color: Colors.black, // Unselected icon color
      //       // activeColor: Colors.black, // Selected icon color
      //       tabBackgroundColor: Colors.green,
      //       padding: EdgeInsets.all(6),
      //       // gap: 8,
      //       tabs:  [
      //         GButton(icon: Icons.circle, leading: SvgPicture.asset('assets/parent/icons/Settings.svg'), text: '',iconColor: Colors.black,),
      //         GButton(icon: Icons.circle, leading: SvgPicture.asset('assets/parent/icons/PayPal.svg'), text: '',iconColor: Colors.black,),
      //         GButton(icon: Icons.circle, leading: SvgPicture.asset('assets/parent/icons/Home.svg'), text: '',iconColor: Colors.black,),
      //         GButton(icon: Icons.circle, leading: SvgPicture.asset('assets/parent/icons/directions_bus.svg'), text: '',iconColor: Colors.black,),
      //         GButton(icon: Icons.circle, leading: SvgPicture.asset('assets/parent/icons/User Profile 02.svg'), text: '',iconColor: Colors.black,),
      //       ],
      //       selectedIndex: _selectedIndex,
      //       onTabChange: (index) {
      //         _selectedIndex = index;
      //         setState(() {
      //           // _selectedIndex = index; // Update the selected index
      //         });
      //
      //         // Navigate to a specific screen based on the index
      //         // switch (index) {
      //         //   case 0:
      //         //     Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(builder: (context) => SettingsScreen()),
      //         //     );
      //         //     break;
      //         //   case 1:
      //         //     Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(builder: (context) => PaymentScreen()),
      //         //     );
      //         //     break;
      //         //   case 2:
      //         //     Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(builder: (context) => ParentHome()),
      //         //     );
      //         //     break;
      //         //   case 3:
      //         //     Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(builder: (context) => BusScreen()),
      //         //     );
      //         //     break;
      //         //   case 4:
      //         //     Navigator.push(
      //         //       context,
      //         //       MaterialPageRoute(builder: (context) => ParentProfile()),
      //         //     );
      //         //     break;
      //         // }
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const PaymentMethodButton({super.key, 
    required this.label,
    required this.isSelected,
  });


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Add tap functionality here
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white ,
          borderRadius: BorderRadius.circular(10),
          // border: Border.all(
          //   color: Colors.black,
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5,),
            SvgPicture.asset(
              'assets/parent/icons/check.svg', // Path to your SVG icon
              // width: 24,  // You can adjust the width as needed
              // height: 24, // You can adjust the height as needed
            ),
          ],
        ),
      ),
    );
  }
}
