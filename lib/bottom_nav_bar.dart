import 'package:flutter/material.dart';
import 'package:practice_1/home_screen.dart';
import 'package:practice_1/new_dashboard.dart';
import 'package:practice_1/new_jazz_ui.dart';
import 'package:practice_1/signin.dart';
import 'package:practice_1/signup.dart';

import 'Zong.dart';
import 'jazz_ui.dart';

class Home1Screen extends StatefulWidget {
  const Home1Screen({super.key});

  @override
  State<Home1Screen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home1Screen> {
  int _currentIndex = 0;

  // Yahan bhi hum screens ki list hi banate hain
  final List<Widget> _screens = [
    HomeScreen(),
    NewJazzUi(),
    JazzUi(),
    Zong(),
    Signin(),
    Signup()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      // Yahan List ki jagah IndexedStack use hota hai
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person_search), label: "Doctors"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Appointments"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "Support"),
          BottomNavigationBarItem(icon: Icon(Icons.percent_outlined), label: "Profile"),
        ],
      ),

    );
  }
}