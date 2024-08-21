import 'package:flutter/material.dart';
import 'package:flutter_practices/bottom_nav_usage/page_one.dart';
import 'package:flutter_practices/bottom_nav_usage/page_three.dart';
import 'package:flutter_practices/bottom_nav_usage/page_two.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  var pages = [const PageOne(), const PageTwo(), const PageThree()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bottom Navigation Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 124, 16, 143),
      ),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_one_outlined), label: "One"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_two_outlined), label: "Two"),
          BottomNavigationBarItem(
              icon: Icon(Icons.looks_3_outlined), label: "Three"),
        ],
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 124, 16, 143),
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
