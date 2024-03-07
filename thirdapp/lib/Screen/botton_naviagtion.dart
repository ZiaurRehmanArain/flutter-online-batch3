import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirdapp/Screen/first_screen.dart';
import 'package:thirdapp/Screen/post_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  var currentIndex = 0;
  var screens = [
    PostScreen(),
    FirstScreen(),
    PostScreen(),
    FirstScreen(),
    PostScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          onTap: (v) {
            print(v);
            currentIndex = v;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Post'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: 'Video'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
          ]),
    );
  }
}
