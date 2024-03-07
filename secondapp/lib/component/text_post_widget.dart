import 'package:flutter/material.dart';
class TextPostWidget extends StatelessWidget {
  const TextPostWidget({
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
              child: Text('description'),
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}