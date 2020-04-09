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


// Wrap组件，和Row组件相似，区别在于水平轴放不下的话，Wrap会自动换行，而Row不会
// RaisedButton按钮安祖

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,  // 水平间距
      runSpacing: 15.0,   // 垂直间距
      children: <Widget>[
        MyButton('按钮1'),
        MyButton('按钮2'),
        MyButton('按钮3'),
        MyButton('按钮4'),
        MyButton('按钮5'),
        MyButton('按钮6'),
        MyButton('按钮7'),
        MyButton('按钮8'),
        MyButton('按钮9'),
      ]
    );
  }
}


// 自定义按钮
class MyButton extends StatelessWidget {

  // final：申明一个常量
  final String text;

  const MyButton(this.text);
  
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Colors.deepOrangeAccent,
      onPressed: () {

      },
    );
  }
}

