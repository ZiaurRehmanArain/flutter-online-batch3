import 'package:flutter/material.dart';
import 'package:secondapp/component/channel_avatar_widget.dart';
import 'package:secondapp/component/image_post_widget.dart';
import 'package:secondapp/component/text_post_widget.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Status',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.more_vert)
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MyStatusWidget(),
                StatusWidget(),
                StatusWidget(),
                StatusWidget(),
                StatusWidget(),
                StatusWidget(),
                StatusWidget(),
                StatusWidget(),
                StatusWidget(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Channels',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.add)
              ],
            ),
          ),
          TextPostWidget(),
          ImagePostWidget(),
          TextPostWidget(),
          ImagePostWidget(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Channels',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'see all',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),

           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
             child: Row(
                children: [
                  ChannelAvatarWidget(),
                  ChannelAvatarWidget(),
                  ChannelAvatarWidget(),
                  ChannelAvatarWidget(),
                  ChannelAvatarWidget(),
                  ChannelAvatarWidget(),
                  ChannelAvatarWidget(),
             
                ],
              ),
           ),
        ]),
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  const StatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.black,
            backgroundImage: NetworkImage(
                'https://freesvg.org/img/publicdomainq-0006224bvmrqd.png'),
          ),
          Text('Name')
        ],
      ),
    );
  }
}

class MyStatusWidget extends StatelessWidget {
  const MyStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                    'https://freesvg.org/img/publicdomainq-0006224bvmrqd.png'),
              ),
              Text('Name')
            ],
          ),
        ),
        Positioned(
          top: 45,
          left: 55,
          child: Container(
            child: Icon(
              Icons.add,
              size: 18,
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
