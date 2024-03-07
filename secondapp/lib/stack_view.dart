import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amber,
      //   title: Text('stack Widget'),
      // ),
      body: Stack(children: [
        Align(
          alignment: Alignment.topRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.green,
            child: Icon(
              Icons.facebook,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.orange,
            child: Icon(
              Icons.facebook,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.5,
          color: Colors.purple,
          child: Icon(
            Icons.facebook,
            size: 50,
            color: Colors.white,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            color: Colors.purple,
            child: Icon(
              Icons.facebook,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.3,
              color: const Color.fromARGB(255, 139, 176, 39),
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP4N7hlmJ4g_2AbEPa-ufj_aMdRybYXac1jQ&usqp=CAU'),
                // child: Icon(
                //   Icons.facebook,
                //   size: 50,
                //   color: Colors.white,
                // ),
              )),
        ),
      ]),
    );
  }
}
