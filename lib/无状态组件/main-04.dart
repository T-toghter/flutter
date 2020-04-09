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

// ListView列表组件
// 自定义生成一个列表数据，遍历展示

class HomeContent extends StatelessWidget {



  // 1.申明一个函数_getData(加_表示私有)；List<Widget>类似于ts的下写法，申明什么东西，申明的是什么类型都要写上
  List<Widget> _getData() {
    // 2.定义一个空的list集合
    List<Widget> list = new List();

    for (var i = 0; i < 10; i++) {
      // 3.通过add方法给list集合添加数据
      list.add(
        ListTile(
          leading: Icon(Icons.home),          // 列表头部图标
          title: Text('列表1列表1列表1列表1列表1'),     // 一级title
          subtitle: Text('二级title二级title二级title二级title二级title'),  // 二级title
        )
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      // scrollDirection: Axis.horizontal,  // 水平
      scrollDirection: Axis.vertical,  // 默认垂直
      children: this._getData()
        // <Widget>[
        //   ListTile(
        //     leading: Icon(Icons.home),          // 列表头部图标
        //     title: Text('列表1列表1列表1列表1列表1'),     // 一级title
        //     subtitle: Text('二级title二级title二级title二级title二级title'),  // 二级title
        //   ),
        //   ListTile(
        //     leading: Icon(Icons.shuffle),          // 列表头部图标
        //     title: Text('列表1列表1列表1列表1列表1'),     // 一级title
        //     subtitle: Text('二级title二级title二级title二级title二级title'),  // 二级title
        //     // trailing: Icon(Icons.shop),            // 列表尾部图标
        //   ),
        //   ListTile(
        //     leading: Icon(Icons.settings),          // 列表图标
        //     title: Text('列表1列表1列表1列表1列表1'),     // 一级title
        //     subtitle: Text('二级title二级title二级title二级title二级title'),  // 二级title
        //   ),
        // ],
    );
  }
}