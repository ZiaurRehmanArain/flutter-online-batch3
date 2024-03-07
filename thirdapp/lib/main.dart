import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirdapp/Screen/botton_naviagtion.dart';
import 'package:thirdapp/Screen/wrap_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WrapScreen(),
        '/home': (context) => BottomNavigationScreen(),
      },
    );
  }
}
