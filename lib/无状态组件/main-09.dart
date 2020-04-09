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
        body: HomeContent(Icons.home),
      ),
    );
  }
}


 // 组件传参


class HomeContent extends StatelessWidget {

  // 1.在构造函数里申明变量(申明的变量要定义类型)，来接受参数
  double size = 32.0;  // 申明double类型的size，默认参数值是32.0
  Color color = Colors.blue;
  IconData icon;

  // 2.定义构造函数，{}里面的参数是选传
  HomeContent (this.icon, { this.color, this.size });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100.0,
      width: 100.0,
      color: Colors.green,
      child: Center(
        child: Icon(this.icon, color: this.color, size: this.size)
      ),
    );
  }
}