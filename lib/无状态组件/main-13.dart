import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('AppBar')),
        body: HomeContent(),
      ),
    );
  }
}

// Card组件、AspectRatio组件、ClipOval组件
// AspectRatio组件作用：让子元素按比例铺满父元素盒子
// ClipOval组件作用：裁剪图片,设置宽高即可达到圆形效果

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Card(
        margin: EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
          AspectRatio(
              aspectRatio: 10.0 / 6.0, // 控制长宽比例
              child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585808875&di=0dd93419f0e4361c910acb9769f6ea6e&imgtype=jpg&er=1&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2017-10-30%2F59f68513a33ca.jpg',
                fit: BoxFit.cover,
              )),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                'https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1585708105&t=c6fe438eb8d4e93cbf4682f725',
                fit: BoxFit.cover,
                height: 60.0,
                width: 60.0,
              )
            ),
            title: Text('xxxxxxxx'),
            subtitle: Text('zzzzzzzzzz'),
          )
        ])
      ),
      Card(
        margin: EdgeInsets.all(10.0),
        child: Column(children: <Widget>[
          AspectRatio(
              aspectRatio: 10.0 / 6.0, // 控制长宽比例
              child: Image.network(
                'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1585808875&di=0dd93419f0e4361c910acb9769f6ea6e&imgtype=jpg&er=1&src=http%3A%2F%2Fpic1.win4000.com%2Fwallpaper%2F2017-10-30%2F59f68513a33ca.jpg',
                fit: BoxFit.cover,
              )),
          ListTile(
            // CircleAvatar把图片处理为头像布局
            leading: CircleAvatar(
              backgroundImage: NetworkImage('https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1585708105&t=c6fe438eb8d4e93cbf4682f725'),
            ),
            title: Text('xxxxxxxx'),
            subtitle: Text('zzzzzzzzzz'),
          )
        ])
      ),
    ]);
  }
}