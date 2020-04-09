import 'package:flutter/material.dart';
import '../datas/listData.dart';

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

// Padding组件,在有些没有padding属性的组件要设置padding的话，可以在外层嵌套一层Padding组件，Padding组件里有padding属性



class HomeContent extends StatelessWidget {

  List<Widget> _getListData () {
    
    var temList = datas.map((ele) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(ele['imageUrl'], fit: BoxFit.cover),
          ],
        )
      );
    });
    // 注意：map返回的是('aaaa', 'bbbb', 'cccc')这种类型的数据，toList可以把数据转为数组
    return temList.toList();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
      child: GridView.count(
        crossAxisCount: 2,  // 列数
        childAspectRatio: 0.5,   // 长宽比例
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
        children: this._getListData()
      ),
    );
  }
}