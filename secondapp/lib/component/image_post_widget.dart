import 'package:flutter/material.dart';

class ImagePostWidget extends StatelessWidget {
  const ImagePostWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 15,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Name')
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('description'),

                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network(
                      'https://img.freepik.com/free-photo/blue-paint-wall-background-texture_53876-14183.jpg?size=626&ext=jpg&ga=GA1.1.313428945.1698907220&semt=ais',
                      width: 40,
                      height: 40,
                      filterQuality: FilterQuality.medium,
                      fit: BoxFit.cover,
                    ),
                  )

                  // ClipRRect(child: ,)
                ],
              ),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
