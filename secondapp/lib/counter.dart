import 'package:flutter/material.dart';

class counter extends StatefulWidget {
  counter({super.key});

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.settings),
          ),
          Icon(Icons.more_vert_outlined),
          SizedBox(
            width: 10,
          )
        ],
        centerTitle: true,
        title: Text('counter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      counter++;
                      setState(() {
                        // rebuild the widget when state is changed
                      });
                      print(counter);
                    },
                    child: Text('increment')),
                ElevatedButton(
                    onPressed: () {
                      counter = 0;
                      setState(() {
                        // rebuild the widget when state is changed
                      });
                    },
                    child: Text('reset')),
                ElevatedButton(
                    onPressed: () {
                      counter--;
                      setState(() {});
                    },
                    child: Text('decrement')),
              ],
            )
          ],
        ),
      ),
    );
  }
}
