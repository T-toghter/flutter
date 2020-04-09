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


 // Row组件->水平布局，Column组件->垂直布局
 // Row和Column与ListView的区别：ListView是相对于整个容器来布局的，Row是相对于父盒子的容器来布局的；


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
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
            child: Center(
              child: Icon(Icons.home, color: Colors.blue, size: 35.0)
            ),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
            child: Center(
              child: Icon(Icons.info, color: Colors.purple, size: 35.0)
            ),
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
            child: Center(
              child: Icon(Icons.search, color: Colors.yellow, size: 35.0)
            ),
          ),
        ],
      )
    );


  }
}