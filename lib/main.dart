import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'secondRoute.dart' as secRoute;

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
    const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {

      const appTitle = 'Form Application';

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
  final _nmCtrl = TextEditingController();
  final _phCtrl = TextEditingController();
  late FocusNode myFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }

  @override
  void dispose() {
      _nmCtrl.dispose();
      _phCtrl.dispose();
      myFocusNode.dispose();
      super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: _nmCtrl,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter Your Name',
              labelText: 'Name'
            ),
          ),
          TextFormField(
            controller: _phCtrl,
            decoration: InputDecoration(
                icon: Icon(Icons.phone),
                hintText: 'Enter a phone number',
                labelText: 'Phone'
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {


                showDialog(context: context, builder: (context) => AlertDialog(
                  content: Text(_nmCtrl.text + " " + _phCtrl.text)
                ));

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => secRoute.SecondRoute())
                // );


                // if(_formKey.currentState!.validate()) {
                //   ScaffoldMessenger.of(context).showSnackBar(
                //     const SnackBar(content: Text("Processing Data."))
                //   );
                // }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}

