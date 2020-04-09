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

// ListView列表组件
// 遍历生成后台返回的数据

class HomeContent extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: datas.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.network(datas[index]['imageUrl']),
          title: Text(datas[index]['title']),
          subtitle: Text(datas[index]['author'])
        );
      },
    );
  }
}