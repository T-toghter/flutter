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

// GridView组件实现网格布局，有两种方法，分别是GridView.count和GridView.builder


class HomeContent extends StatelessWidget {

  // 1.GridView.count
  // List<Widget> _getListData () {
    
  //   var temList = datas.map((ele) {
  //     return Container(
  //       child: Column(
  //         children: <Widget>[
  //           Image.network(ele['imageUrl']),
  //           Text(ele['title'])
  //         ],
  //       )
  //     );
  //   });
  //   // 注意：map返回的是('aaaa', 'bbbb', 'cccc')这种类型的数据，toList可以把数据转为数组
  //   return temList.toList();
  // }


  @override
  Widget build(BuildContext context) {
    // // 1.GridView.count
    // return GridView.count(
    //   crossAxisCount: 2,     // 网格的列数
    //   mainAxisSpacing: 10.0,  // 行轴间距
    //   crossAxisSpacing: 15.0,   // 纵轴间距
    //   padding: EdgeInsets.all(10),    // 内边距
    //   childAspectRatio: 0.6,   // 长宽之间的比例
    //   children: this._getListData()
    // );

    // 2.GridView.builder
    return GridView.builder(
      // gridDelegate控制盒子布局
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,     // 网格的列数
        mainAxisSpacing: 10.0,  // 行轴间距
        crossAxisSpacing: 15.0,   // 纵轴间距
        childAspectRatio: 0.6,   // 长宽之间的比例
      ),
      itemCount: datas.length,
      itemBuilder: (content, index) {
        return Container(
          child: Column(
            children: <Widget>[
              Image.network(datas[index]['imageUrl']),
              Text(
                datas[index]['title'],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              )
            ]
          ));
      },
    );
  }
}