import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text(
              'Column',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            leading: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            actions: [
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          body: Container(
            width: double.infinity,
            color: Colors.amber,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              verticalDirection: VerticalDirection.down,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Text('1'),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text('2'),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text('3'),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
              ],
            ),
          )),
    );
  }
}
