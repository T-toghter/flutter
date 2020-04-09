import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar')),
        body: HomeContent(),
      ),
    );
  }
}

// Stack组件，定位，配合Align(直接用方位词定位left、top、bottom、right)和Positioned(给left、top、bottom、right是指具体值)使用

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 400.0,
          width: 300.0,
          color: Colors.yellow,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center, 
                child: Icon(Icons.settings, size: 50.0, color: Colors.redAccent)
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Icon(Icons.home, size: 50.0, color: Colors.black38),
              )
            ]
          ))
    );
  }
}
