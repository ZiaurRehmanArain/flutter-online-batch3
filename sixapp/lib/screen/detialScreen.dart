import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title,des,img,price;
  const DetailScreen({super.key,required this.title,required this.des,required this.img,required this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(img),
            Text(title),
            Text(price),
            Text(des),
            Row(
              children: [
                // Text('Rating :'),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
                Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
