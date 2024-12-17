//  import 'package:flutter/material.dart';
//
//  class Dashboard extends StatelessWidget {
//   const Dashboard({super.key});
//
//    @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//          title: const Text('Dashboard'),
//       ),
//        body: const Center(
//          child: Text('Welcome to the Dashboard!'),
//        ),
//     );
//    }
// }




//dashbaord pages



import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0; // To track the selected tab

  // Pages for each tab
  final List<Widget> _pages = [
    HomePage(),
    CartPage(),
    ContactUsPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update the selected tab
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: "Contact Us",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        selectedItemColor: Colors.blue, // Highlight selected icon
        unselectedItemColor: Colors.grey, // Dim unselected icons
        backgroundColor: Colors.white, // Background color of the bar
      ),
    );
  }
}

// Placeholder for Home Page
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to the Home Page!",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Placeholder for Cart Page
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Your Cart is Empty",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}

// Placeholder for Contact Us Page
class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Contact Us at: contact@example.com",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

// Placeholder for Settings Page
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Settings Page",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }
}