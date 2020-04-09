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

// GridView组件实现网格布局


class HomeContent extends StatelessWidget {

  // 自定以生成数据，遍历展示
  List<Widget> _getListData () {
    List<Widget> list = new List();
    for (var i = 0; i < 30; i++) {
      list.add(
        Container(
          alignment: Alignment.center,
          child: Text(
            '第$i条数据',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          color: Colors.lightGreen,
        )
      );
    }
    return list;
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,     // 网格的列数
      mainAxisSpacing: 10.0,  // 行轴间距
      crossAxisSpacing: 15.0,   // 纵轴间距
      padding: EdgeInsets.all(10),    // 内边距
      childAspectRatio: 0.6,   // 长宽之间的比例
      children: this._getListData()
    );
  }
}