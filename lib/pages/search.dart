import 'package:flutter/material.dart';
import '../tabs/Tabs.dart';


// 有状态组件传参，子组件获取传递过来的数据

class SearchPage extends StatefulWidget {

  // 第一步
  final arguments;
  const SearchPage({this.arguments});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search页面')),
      body: Center(
        // 第二步 widget.arguments['params']
        child: 
          Column(
            children: <Widget>[
              Text(widget.arguments['params']),
              RaisedButton(
                child: 
                  Text('返回首页'),
                  onPressed: () {

                    // 清除前面所有页面，返回根,并且还可以传参
                    Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(builder: (context) => new TabBottom(index: 1)),
                      (route) => route == null
                    );
                  },
              )
            ],
          ),
      )
    );
  }
}