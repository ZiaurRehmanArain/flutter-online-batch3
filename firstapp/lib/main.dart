import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

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
            decoration: BoxDecoration(
              // color: Colors.greenAccent
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // transform: GradientRotation(10),
                colors: [
                Colors.greenAccent,
                const Color.fromARGB(255, 88, 174, 133),
                Color.fromARGB(255, 204, 230, 35),
                Colors.greenAccent,
              ])
              // gradient: RadialGradient(
              //   radius: 0.8,
              //   colors: [
              //   Colors.red,
              //   const Color.fromARGB(255, 175, 102, 97),
              //   const Color.fromARGB(255, 128, 22, 14),
              //   const Color.fromARGB(255, 160, 39, 30),
              // ])
            ),
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: NetworkImage(
                      'https://images.inc.com/uploaded_files/image/1920x1080/getty_481292845_77896.jpg'),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2,color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 10,
                        offset: Offset(5, 0),
                      )
                    
                    ],
                    // shape: BoxShape.circle
                    
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('Name',style: TextStyle(color: Colors.white),),
                    Text('Ali',style: TextStyle(color: Colors.white),)
                  ],),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('Name',style: TextStyle(color: Colors.white),),
                    Text('Ali',style: TextStyle(color: Colors.white),)
                  ],),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Text('Name',style: TextStyle(color: Colors.white),),
                    Text('Ali',style: TextStyle(color: Colors.white),)
                  ],),
                ),
              ],
            ),
          )),
    );
  }
}
