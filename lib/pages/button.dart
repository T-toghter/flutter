import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('按钮页面')),
      // 浮动按钮
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add, color: Colors.black, size: 40.0,),
        onPressed: () {
          print('浮动按钮');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          children: <Widget>[
            Row(children: <Widget>[
              RaisedButton(
                color: Colors.blue,         // 背景颜色
                textColor: Colors.white,    // 字体颜色
                elevation: 15.0,            // 阴影
                splashColor: Colors.yellow,   // 水波纹(按钮长按会出现水波纹)
                child: Text('普通按钮'),
                onPressed: () {
                  print('普通按钮');
                },
              ),
              SizedBox(width: 30.0),
              Container(
                width: 150.0,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.blue,         // 背景颜色
                  textColor: Colors.white,    // 字体颜色
                  elevation: 10.0,            // 阴影
                  child: Text('有宽高按钮'),
                  onPressed: () {
                    print('有宽高按钮');
                  },
                ),
              ),
            ]),
            Row(children: <Widget>[
              Expanded(
                child: RaisedButton(
                  color: Colors.blue,         // 背景颜色
                  textColor: Colors.white,    // 字体颜色
                  elevation: 10.0,            // 阴影
                  child: Text('自适应按钮'),
                  onPressed: () {
                    print('自适应按钮');
                  },
                ),
              )
            ],),
            Row(children: <Widget>[
              RaisedButton.icon(
                icon: Icon(Icons.home),
                label: Text('图标按钮'),
                onPressed: () {
                  print('图标按钮');
                },
              ),
              SizedBox(width: 20.0),
              RaisedButton(
                color: Colors.blue,         // 背景颜色
                textColor: Colors.white,    // 字体颜色
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text('圆角按钮'),
                onPressed: () {
                  print('圆角按钮');
                },
              )
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,  // 居中
              children: <Widget>[
                OutlineButton(
                  child: Text('线框按钮'),
                  onPressed: () {
                    print('线框按钮');
                  },
                )
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,  // 居中
              children: <Widget>[
                // ButtonBar把多个按钮放一起
                ButtonBar(children: <Widget>[
                  OutlineButton(
                    child: Text('登陆'),
                    onPressed: () {
                      print('登陆');
                    },
                  ),
                  OutlineButton(
                    child: Text('注册'),
                    onPressed: () {
                      print('注册');
                    },
                  ),
                ])
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,  // 居中
              children: <Widget>[
                MyButton(text: '自定义按钮', w: 110.0, h: 60.0, pressed: () {
                  print('自定义按钮');
                },)
            ],),
          ],)
      )
    );

  }
}

// 自定义按钮
class MyButton extends StatelessWidget {

  final String text;
  final double w;
  final double h;
  final pressed;
  const MyButton({this.text = '默认按钮', this.pressed = null, this.w = 100.0, this.h = 50.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.w,
      height: this.h,
      child: OutlineButton(
        child: Text(this.text),
        onPressed: this.pressed,
      ),
    );
  }
}
