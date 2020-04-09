import 'package:flutter/material.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar')
        ),
        body: HomeContent(),
      ),
    );
  }
}


 // Expanded组件，相当于flex布局


class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 400.0,
      width: 350.0,
      color: Colors.purple,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  // 均匀等分隔开
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              height: 100.0,
              color: Colors.green,
              child: Center(
                child: Icon(Icons.home, color: Colors.blue, size: 35.0)
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100.0,
              color: Colors.deepPurple,
              child: Center(
                child: Icon(Icons.info, color: Colors.tealAccent, size: 35.0)
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 100.0,
              color: Colors.blue,
              child: Center(
                child: Icon(Icons.settings, color: Colors.yellow, size: 35.0)
              ),
            ),
          ),
        ],
      )
    );

  }
}