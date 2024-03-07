import 'package:flutter/material.dart';
class ChannelAvatarWidget extends StatelessWidget {
  const ChannelAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1,color: Colors.grey)
            ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                    'https://freesvg.org/img/publicdomainq-0006224bvmrqd.png'),
              ),
              Text('Name'),
              SizedBox(height: 10,),
              Container( 
         decoration: BoxDecoration(
                 color: Colors.green[100],
                 borderRadius: BorderRadius.circular(20)
         ),
                padding: EdgeInsets.symmetric(vertical: 2,horizontal: 20),
                child: Text('Follow'),)
         
            ],
          ),
        ),
        Positioned(
          top: 45,
          left: 65,
          child: Container(
            child: Icon(
              Icons.check,
              size: 15,
              color: Colors.white,
            ),
            decoration: BoxDecoration(
                color: Colors.teal,
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(50)),
          ),
        )
      ],
    );
  }
}
