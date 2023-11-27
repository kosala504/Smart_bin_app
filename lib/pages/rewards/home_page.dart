import 'package:cleanennviro/profile_screen.dart';
import 'package:cleanennviro/redeem.dart';
import 'package:cleanennviro/reward_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages/screens here
    // For example:
    ProfileScreen(),
    RewardScreen(),
    RedeemScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
          backgroundColor: const Color(0xff980f0f),
        selectedItemColor: const Color(0xffd0b428),
        unselectedItemColor: const Color(0xffb7b7b7),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on_outlined),
            label: 'Redeem',
          ),
        ],
      ),

    );
  }
}
