import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thirdapp/Screen/post_screen.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => PostScreen()));
            Navigator.pushNamed(context, '/home');
          },
          child: Text('Home')),
    )

        //  Wrap(
        //   children: [
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   Container(margin: EdgeInsets.all(2),width: 100,height: 100, color: Colors.amber,),
        //   ],
        // ),
        );
  }
}
