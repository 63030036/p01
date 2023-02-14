import 'package:flutter/material.dart';
class Content extends StatelessWidget
{

  final String food;
  final int price;
  final String benefit;

  Content(this.food, this.price, this.benefit);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text('$food'),),
          body: Container(
            width: 500, height: 500,
            child: Card(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("รายการอาหาร : $food", style: TextStyle(fontSize: 30,color: Colors.redAccent),),
                  Text("ราคา : $price บาท" ,  style: TextStyle(fontSize: 25),),
                  Text("ประโยชน์ : $benefit",  style: TextStyle(fontSize: 20),)

                ],
              ),
            ),
          ),
        )
    );
  }
}
