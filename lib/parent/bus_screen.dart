import 'package:edunourish/parent/payment_screen.dart';
import 'package:edunourish/parent/settings_screen.dart';
import 'package:edunourish/parent_home.dart';
import 'package:edunourish/parent/parent_profile.dart';
import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';


 int _selectedIndex=0;

class BusScreen extends StatefulWidget {
  static const String routeName = 'Bus_Screen';
  @override
  State<BusScreen> createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF70C1F3),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: const Padding(
              padding: EdgeInsets.only(left: 16, top: 0 , bottom: 32),
              child: Text(
                'BUS',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Map',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                // child: ClipRRect(
                //   borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/bus_screen/🌎 Map Maker_ Alexandria, Alexandria, Egypt (Multi Brand Network).png'),
                  // GoogleMap(
                  //   initialCameraPosition: CameraPosition(
                  //     target: LatLng(31.2001, 29.9187), // Alexandria coordinates
                  //     zoom: 12,
                  //   ),
                  // ),
                // ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Bus schedules',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Departure time  7:30',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  'arrival time  3:30',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
