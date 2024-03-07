import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Column',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: Icon(Icons.menu,color: Colors.white,),
          actions: [
            Icon(Icons.settings,color: Colors.white,),
            SizedBox(width: 10,)

          ],
        ),
        body: Container(
            width: double.infinity,
            color: Colors.amber,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
            
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeB6tdotatbrf8CFf8qJmqO3Cs6YvcIN8UTGC_7_oIdw&s'),
                ),
                // SizedBox(width: 5,),
                Container(
                  child: Text('2'),
                  width: 60,
                  height: 100,
                  color: Colors.red,
                ),
                // SizedBox(width: 5,),
                Container(
                  child: Text('3'),
                  width: 60,
                  height: 100,
                  color: Colors.red,
                ),
                    
            
              ],
            ),
          
        )
      ),
    );
  }
}
