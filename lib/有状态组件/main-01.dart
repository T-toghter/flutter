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


  // 有状态组件初体验

class HomeContent extends StatefulWidget {
  HomeContent({Key key}) : super(key: key);

  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Column(
         children: <Widget>[

           // 一个空组件，用来占位符
           SizedBox(height: 200.0),

           // Chip组件，自带圆角及背景颜色的组件
           Chip(label: Text('${this.count}')),
           RaisedButton(
             child: Text('按钮'),
             onPressed: () {
               setState(() {
                 this.count++;
               });

              // print()  控制台打印log
              print(this.count);

             },
          )
         ]
      ),
    );
  }
}
