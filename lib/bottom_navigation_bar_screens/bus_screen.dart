import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF70C1F3),
        leading: IconButton(
          icon: Icon(Icons.format_list_bulleted_outlined, color: Colors.black),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
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
      bottomNavigationBar: Container(
        color: Color(0xFF70C1F3),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 12.0),
          child: GNav(
            backgroundColor: Color(0xFF70C1F3),
            color: Colors.white,
            activeColor: Colors.black,
            tabBackgroundColor: Color(0xFF41708D),
            padding: EdgeInsets.all(16),
            gap: 8,
            tabs: const [
              GButton(icon: Icons.settings, text: 'Settings',iconColor: Colors.black,),
              GButton(icon: Icons.paypal , text: 'Paypal',iconColor: Colors.black,),
              GButton(icon: Icons.home_outlined , text: 'Home',iconColor: Colors.black,),
              GButton(icon: Icons.directions_bus , text: 'Bus',iconColor: Colors.black,),
              GButton(icon: Icons.supervised_user_circle, text: 'User',iconColor: Colors.black,),
            ],
          ),
        ),
      ),
    );
  }
}
