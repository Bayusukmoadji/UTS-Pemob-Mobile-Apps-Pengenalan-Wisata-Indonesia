import 'package:flutter/material.dart';
import '../controllers/home_controller.dart';

class BasePage extends StatelessWidget {
  final Widget bodyContent;
  final int selectedIndex;
  final HomeController _controller;

  const BasePage({
    Key? key,
    required this.bodyContent,
    required this.selectedIndex,
    required HomeController controller,
  })  : _controller = controller,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the border
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Color(0xFF4CAF50), // Border color
              width: 2.0,
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.landscape, // Gunung or Danau icon
                color: Color(0xFF4CAF50), // Icon color
              ),
              SizedBox(width: 8),
              Text(
                'Legok Tourism Gawir Lake',
                style: TextStyle(
                  color: Colors.black, // Text color
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xFFE1EAD9),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE1EAD9),
          border: Border.all(color: Color(0xFF4CAF50), width: 3),
        ),
        child: bodyContent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Maps'),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections), label: 'Collections'),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: Color(0xFF4CAF50),
        onTap: _controller.onBottomNavTapped,
      ),
    );
  }
}
