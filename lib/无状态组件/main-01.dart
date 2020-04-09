// 快速引入flutter，快捷键fim
import 'package:flutter/material.dart';

// 入口文件
void main() => runApp(MyApp());


// 自定义组件，无状态组件
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // MaterialApp为Flutter根组件使用,可以继承主体数据，固定写法
    return MaterialApp(
      // Scaffold是Material中主要的布局组件
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        'Hellow Flutter',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.orange,
          fontSize: 40.0    // 注意点：所有的数据类型均为double类型
        ),
      )
    );
  }
}





