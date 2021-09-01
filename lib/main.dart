import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() => runApp(LifeCycleExm());

class LifeCycleExm extends StatefulWidget {
  _LifeCycleExmState createState() => _LifeCycleExmState();
}


class _LifeCycleExmState extends State<LifeCycleExm> with WidgetsBindingObserver {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
    print("initState");
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
    print('AppLifeCycleState: $state');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    print("deactivate");
    super.deactivate();
  }

  int _counter = 0 ;

  void _plusCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar( title: Text("Widget Life Cycle"),) ,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have pushed the button this many times"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4 ,
            ),
            SizedBox(height: 8.8,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _plusCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}