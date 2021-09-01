

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            //Naviage to main.
            Navigator.pop(context);
          },
          child: Text("Go Back"),
        ),
      ),
    );
  }
}