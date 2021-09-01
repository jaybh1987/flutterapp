import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
    const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {

      const appTitle = 'Form Validation Demo';

      return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
          ),
          body: MyCustomForm(),
        ),
      );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if(value == null || value.isEmpty) {
                return 'Please enter some text. ';
              }
              return null;
            }),
          TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty) {
                  return 'Please enter some text. ';
                }
                return null;
              }),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Processing Data."))
                  );
                }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}

