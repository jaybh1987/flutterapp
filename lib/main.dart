import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}


class _MyAppState extends State<MyApp> {

  List<String> _products = ['Laptop'];


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(
          title: Text('First App'),
        ),

        body: Column(
          children: [
            Container(

              margin: EdgeInsets.all(10.0),


              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('PC');
                  });
                },
                child: Text('Hello World'))),

            Column(
              children: _products.map( (e) =>
                  Card(
                    child: Column(
                      children: <Widget>[ Text(e) ],
                    ),
                  )
              ).toList(),
            )
          ],
        ),
      ),
    );
  }
}