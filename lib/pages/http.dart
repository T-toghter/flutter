import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';   // json和map数据类型互相转换包




class Http extends StatefulWidget {
  Http({Key key}) : super(key: key);

  @override
  _HttpState createState() => _HttpState();
}

class _HttpState extends State<Http> {

  List lists = [];

  @override
  void initState() { 
    super.initState();
    
    // 页面初始化进来发送请求
    this._getDatas();
  }

  _getDatas() async {
    var api = 'http://a.itying.com/api/productlist';
    var res = await http.get(api);

    if (res.statusCode == 200) {
      setState(() {
        this.lists = json.decode(res.body)['result'];
      });
    } else {
      print('请求失败码：${res.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('http请求数据')),
      body: ListView.builder(
        itemCount: this.lists.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(this.lists[index]['title'])
          );
        },
      )
    );
  }
}