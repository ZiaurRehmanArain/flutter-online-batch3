import 'package:flutter/material.dart';
import 'package:secondapp/whatapp/chat_screen.dart';
import 'package:secondapp/whatapp/status_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          actions: [
            Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 10,
            )
          ],
          title: Text(
            'WhatApp',
            style: TextStyle(color: Colors.white),
          ),
          bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(149, 255, 255, 255),
              tabs: [
                Tab(
                  text: 'Chat',
                ),
                Tab(
                  text: 'Status',
                ),
                Tab(
                  text: 'Call',
                ),
              ]),
        ),
        body: TabBarView(children: [
          ChatScreen(),
         StatusScreen(),
          Center(
            child: Text('call'),
          ),
        ]),
      ),
    );
  }
}
