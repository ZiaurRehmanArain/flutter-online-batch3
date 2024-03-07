import 'package:flutter/material.dart';
import 'package:sixapp/screen/detialScreen.dart';
import 'package:sixapp/screen/info.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('product'),
      ),
      body: ListView.builder(
        itemCount: info.length,
        
        itemBuilder: (BuildContext context, index) {
        //  double rate = info[0]['rating']['rate'];
          // print(rate['rates']);
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>DetailScreen(title: info[index]['title'].toString(), des:  info[index]['description'].toString(), img: info[index]['image'].toString(), price: info[index]['price'].toString())));

            },
            child: Card(
              child: Row(
                children: [
                  Image.network(
                    info[index]['image'].toString(),
                    height: 150,
                    width: 100,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 25,
                        child: Text(
                          info[index]['title'].toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 25,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          'Price :${info[index]['price'].toString()}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 25,
                        child: Text(
                          info[index]['description'].toString(),
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                      ),
            
                      //  info[index]['rating']['rate']==2?
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
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
