import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( new DogApp());
}

class DogApp extends StatelessWidget {
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Dog App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('yellow lab'),
        ),
        body: Center(

          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             DogName("Jay"),
             SizedBox(height: 8.0),
             DogName("Sandy"),
             SizedBox(height: 8.0),
             DogName("Meet"),
           ],
          )
        )
      )
    );
  }
}


class DogName extends StatelessWidget {
  final String name;
  const DogName(this.name);

  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}