import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// remember , when we the user start typing his information may be face a problem
class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Adjust body when keyboard appears
      appBar: AppBar(
        backgroundColor: Color(0xFFB4DFEB),
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
      backgroundColor: Color(0xFFB4DFEB),
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
              Center(
                child: Text(
                  'Payment data',
                  style: TextStyle(fontSize:24 ,color: Colors.black,fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Total price',
                style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 8),
              Text(
                '\$ 2280.00',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 21),
              Text(
                'payment method',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PaymentMethodButton(label: 'Credit', isSelected: true),
                  PaymentMethodButton(label: 'Debit', isSelected: false),
                  PaymentMethodButton(label: 'paypal', isSelected: false),
                ],
              ),
              SizedBox(height: 21),
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
                      SizedBox(width: 20,)
                    ],
                  ),
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,  // Ensures only numeric input
              ),
              SizedBox(height: 21),
              Row(
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
              SizedBox(height: 21),
              TextField(
                decoration: InputDecoration(
                  labelText: 'card holder',
                  hintText: 'Your name and username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 21),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Save card data for future payment',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Switch(value: true, onChanged: (value) {}),
                ],
              ),
              SizedBox(height: 40,),
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
                    child: Text(
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
      bottomNavigationBar: Container(
        color: Color(0xFFB4DFEB),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 12.0),
          child: GNav(
            backgroundColor: Color(0xFFB4DFEB),
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

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  const PaymentMethodButton({
    required this.label,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: isSelected,
      selectedColor: Colors.blue,
      onSelected: (value) {},
    );
  }
}
