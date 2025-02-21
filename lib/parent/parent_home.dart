import 'package:edunourish/parent/bus_screen.dart';
import 'package:edunourish/parent/parent_home_screen.dart';
import 'package:edunourish/parent/payment_screen.dart';
import 'package:edunourish/parent/settings_screen.dart';
import 'package:edunourish/parent/parent_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

int _selectedIndex = 4;

class ParentHome extends StatefulWidget {
  const ParentHome({super.key});

  @override
  State<ParentHome> createState() => _ParentHomeState();
}

class _ParentHomeState extends State<ParentHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _selectedIndex > 0 && _selectedIndex < 4
          ? AppBar(
              backgroundColor: _appBarColors[_selectedIndex],
              leading: IconButton(
                icon: const Icon(Icons.format_list_bulleted_outlined,
                    color: Colors.black),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.notifications_none_outlined,
                      color: Colors.black),
                  onPressed: () {},
                ),
              ],
            )
          : null,
      body: bodyTabs[_selectedIndex],
      bottomNavigationBar: Container(
        color: _backgroundColorForBottomNavigationBarColors[_selectedIndex],
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
            bottom: 8,
            right: 8,
          ),
          child: GNav(
            backgroundColor:
                _backgroundColorForBottomNavigationBarColors[_selectedIndex],
            tabBackgroundColor: const Color(0xFF88cbf5),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            tabs: [
              GButton(
                icon: Icons.circle,
                leading: SvgPicture.asset('assets/parent/icons/Settings.svg'),
                text: '',
                iconColor: Colors.black,
              ),
              GButton(
                icon: Icons.circle,
                leading: SvgPicture.asset('assets/parent/icons/PayPal.svg'),
                text: '',
                iconColor: Colors.black,
              ),
              GButton(
                icon: Icons.circle,
                leading: SvgPicture.asset('assets/parent/icons/Home.svg'),
                text: '',
                iconColor: Colors.black,
              ),
              GButton(
                icon: Icons.circle,
                leading:
                    SvgPicture.asset('assets/parent/icons/directions_bus.svg'),
                text: '',
                iconColor: Colors.black,
              ),
              GButton(
                icon: Icons.circle,
                leading:
                    SvgPicture.asset('assets/parent/icons/User Profile 02.svg'),
                text: '',
                iconColor: Colors.black,
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }

  final List<Color> _appBarColors = [
    Colors.transparent,
    const Color(0xFFB4DFEB),
    const Color(0xFF72B7DC),
    const Color(0xFF70C1F3),
    Colors.transparent,
  ];

  List<Widget> bodyTabs = [
     SettingsScreen(),
    const PaymentScreen(),
    const ParentHomeScreen(),
    BusScreen(),
    const ParentProfile(),
  ];

  final List<Color> _backgroundColorForBottomNavigationBarColors = [
    Colors.white,
    const Color(0xFFB4DFEB),
    const Color(0xFF72B7DC),
    const Color(0xFF70C1F4),
    const Color(0xFF7ABED1),
  ];
}
