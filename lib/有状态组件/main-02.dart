import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabBottom()
    );
  }
}


  // 底部Tab组件及点击页面切换实现

class TabBottom extends StatefulWidget {
  TabBottom({Key key}) : super(key: key);

  @override
  _TabBottomState createState() => _TabBottomState();
}
class _TabBottomState extends State<TabBottom> {

  int _currentIndex = 0;

  List _lists = [
    Home(),
    Category(),
    Setting(),
    Person()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('AppBar')),
        body: this._lists[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          // 注意点：当BottomNavigationBarItem大于或等于四个时，要设置type: BottomNavigationBarType.fixed，不然底部会空白
          type: BottomNavigationBarType.fixed,
          currentIndex: this._currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('首页')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('分类')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('设置')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的')
            ),
          ],
          onTap: (int index) {
            
            setState(() {
              this._currentIndex = index;
            });
          },
        )
      );
  }
}



// Home页面
class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Home页面'),
    );
  }
}

// category页面
class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}
class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Category页面'),
    );
  }
}

// Setting页面
class Setting extends StatefulWidget {
  Setting({Key key}) : super(key: key);

  @override
  _SettingState createState() => _SettingState();
}
class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Setting页面'),
    );
  }
}

// Person页面
class Person extends StatefulWidget {
  Person({Key key}) : super(key: key);

  @override
  _PersonState createState() => _PersonState();
}
class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Person页面'),
    );
  }
}