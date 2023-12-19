import 'package:flutix/Screen/dashboard/dashboard.dart';
import 'package:flutix/Screen/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutix/Screen/order/order.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPages = 0;

  final List<Widget> _children = [
    Dashboard(),
    MyOrder(), 
    Profile(),
  ];
  void onTapped(int index) {
    setState(() {
      _currentPages = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentPages],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapped,
        currentIndex: _currentPages,
        selectedItemColor: Colors.blue[300],
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xFF130B2B),
        items: [
          BottomNavigationBarItem( icon: buildGradientIcon(Icons.home), label: 'Movies'),
          BottomNavigationBarItem( icon: buildGradientIcon(Icons.movie), label: 'my Tiket'),
          BottomNavigationBarItem( icon: buildGradientIcon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
    Widget buildGradientIcon(IconData icon) {
    return Container(
      width: 40.0, // lebar ikon yang diinginkan
      height: 40.0, //  tinggi ikon yang diinginkan
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => onTapped(_currentPages), // Jika ikon diketuk, navigasi ke halaman yang sama
          borderRadius: BorderRadius.circular(20.0), //tinggi Container
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFF2698DB), Color(0xFF9934FC)],
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Center(
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}