import 'package:flutter/material.dart';
import 'food.dart';
import 'detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Detail.name,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${Detail.name}")),
      body: _listView(context),
    );
  }
}

ListView _listView(BuildContext context) {
  return ListView.builder(
      itemCount: Detail.food.length,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text(
              '${Detail.food[index]}',
              style: TextStyle(color: Colors.black),
            ),
            subtitle: Text('ราคา : ${Detail.price[index]}', style: TextStyle(color: Colors.pinkAccent[450]),),
            leading:
            Container(
              height: 80,
              width: 80,
              margin: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage( Detail.image[index]
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Container(
            //   height: 80,
            //   width: 80,
            //   child: Image(
            //       height: 100,
            //       image: AssetImage( Detail.image[index]
            //       ),
            //       ),
            // ),
            // Icon(
            //   Icons.shopping_cart,
            //   color: Colors.green,
            // ),
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward_sharp),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder:
                            (context) =>
                            Content(Detail.food[index], Detail.price[index], Detail.benefit[index])

                    ));},
            ),
          ),
        );
      });
}
