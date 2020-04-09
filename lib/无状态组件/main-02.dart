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

// Fluter是万物皆组件
// Container组件相当于div标签，Text组件相当于span标签

class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          'Hellow Flutter!!!',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.red
          ),
        ),
        width: 300.0,
        height: 400.0,
        padding: EdgeInsets.fromLTRB(10, 15, 20, 25),
        decoration: BoxDecoration(      // decoration提示不正确，要看文档
          color: Colors.blueAccent,
          border: Border.all(           // border提示不正确，要看文档
            color: Colors.purpleAccent,
            width: 2.0
          ),
          borderRadius: BorderRadius.all(  // borderRadius提示不正确，要看文档
            Radius.circular(20),
          )
        ),
      ),
    );
  }
}