import 'package:dribbledesign/screens/home/home.dart';
import 'package:dribbledesign/screens/schedule/schedule_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  int _selectedindex = 0;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {
      widget._selectedindex = index; // Update the selected index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widget._selectedindex == 0 ? const Home() : const Schedule(),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromRGBO(72, 148, 254, 0.9),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.house_rounded),
          ),
          BottomNavigationBarItem(
            label: "Schedule",
            icon: Icon(
              Icons.calendar_month_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat_bubble,
            ),
          ),
          BottomNavigationBarItem(
            label: "profile",
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
        currentIndex: widget._selectedindex,
        onTap: _onItemTapped,
      ),
    );
  }
}
