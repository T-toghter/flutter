import 'package:flutter/material.dart';
import './form.dart';

class Lists extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List页面')),
      body: Bodys(),
    );
  }
}

// 实现路由跳转及传值，路由返回

// Bodys页面
class Bodys extends StatefulWidget {
  Bodys({Key key}) : super(key: key);

  @override
  _BodysState createState() => _BodysState();
}

class _BodysState extends State<Bodys> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('替换路由跳转'),
        onPressed: () {
          // 替换理由
          // 运用场景：步骤业务时，从第一步->第二步->第三步，当切换到第三个页面，第三个页面点击头部返回要返回到首页，此时替换路由就用的上场了
          // 第一步页面用Navigator.pushNamed跳转，第二步页面用Navigator.of(context).pushReplacementNamed跳转，即可实现
          Navigator.of(context).pushReplacementNamed(
            '/pages/form',
            arguments: {
              'title': 'form页面'
            }
          );
          // 命名路由跳转及传值
          // Navigator.pushNamed(
          //   context, 
          //   '/pages/form',
          //   arguments: {
          //     'title': '命名路由传过来的参数'
          //   }
          // );
        },
      ),
    );
  }
}
