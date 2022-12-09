import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List components = [
    [Icons.search, "Explore"],
    [Icons.people, "Community"],
    [Icons.add, "Sell"],
    [Icons.chat_bubble_outline, "Chat"],
    [Icons.person_outline, "My Motors"],
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.blue,
        unselectedItemColor: const Color.fromARGB(255, 44, 43, 43),
        selectedFontSize: 12.0,
        showUnselectedLabels: true,
        currentIndex: selected,
        onTap: (value) => setState(() {
              selected = value;
            }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
            ),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add,
            ),
            label: "Sell",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
            ),
            label: "Chat",
            // backgroundColor: Colors.yellow
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
            ),
            label: "My Motors",
            // backgroundColor: Color.fromRGBO(230, 220, 51, 1),
          )
        ]);
  }
}
