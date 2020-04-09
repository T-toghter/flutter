import 'package:flutter/material.dart';

class TabBottom extends StatefulWidget {

  final index;
  TabBottom({Key key, this.index = 0}) : super(key: key);

  @override
  _TabBottomState createState() => _TabBottomState(this.index);
}

class _TabBottomState extends State<TabBottom> {

  int _currentIndex;
  _TabBottomState(index) {
    this._currentIndex = index;
  }

  List _lists = [Home(), Category(), Setting(), Person()];

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
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.category), title: Text('分类')),
            BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('设置')),
            BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('我的')),
          ],
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
        ),
        // 添加抽屉
        endDrawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    // UserAccountsDrawerHeader组件，Drawer组件头部
                    child: UserAccountsDrawerHeader(
                      accountEmail: Text('xxxxxxxx.com'),
                      accountName: Text('Flutter'),
                      currentAccountPicture: CircleAvatar(
                        // 添加背景图片
                        backgroundImage: NetworkImage('https://t7.baidu.com/it/u=3616242789,1098670747&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1585708105&t=c6fe438eb8d4e93cbf4682f725'),
                      ),
                    ),
                  )
              ]),
              ListTile(
                title: Text('我的空间'),
                leading: CircleAvatar(
                  child: Icon(Icons.home),
                ),
              ),
              Divider(),   // 添加一条线
              ListTile(
                title: Text('设置中心'),
                  leading: CircleAvatar(
                  child: Icon(Icons.settings),
                ),
                onTap: () {
                  // 实现点击跳转，并关闭抽屉
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/pages/list');
                },
              ),
              Divider(),
              ListTile(
                title: Text('用户中心'),
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
              ),
              Divider(),
            ],),
        ),
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
    return Column(
      children: <Widget>[
        RaisedButton(
          child: Text('替换路由跳转'),
          onPressed: () {
            // 路由跳转及传值
            // 运用场景：页面跳转了，头部返回键默认返回上一个页面
            Navigator.pushNamed(context, '/pages/list');
          },
        ),
        RaisedButton(
          child: Text('自定义AppBar'),
          onPressed: () {
            // 路由跳转及传值
            // 运用场景：页面跳转了，头部返回键默认返回上一个页面
            Navigator.pushNamed(context, '/pages/appBar');
          },
        ),
        RaisedButton(
          child: Text('按钮页面'),
          onPressed: () {
            // 路由跳转及传值
            // 运用场景：页面跳转了，头部返回键默认返回上一个页面
            Navigator.pushNamed(context, '/pages/button');
          },
        ),
        RaisedButton(
          child: Text('日期组件'),
          onPressed: () {
            // 路由跳转及传值
            // 运用场景：页面跳转了，头部返回键默认返回上一个页面
            Navigator.pushNamed(context, '/pages/date');
          },
        ),
        RaisedButton(
          child: Text('swiper组件'),
          onPressed: () {
            // 路由跳转及传值
            // 运用场景：页面跳转了，头部返回键默认返回上一个页面
            Navigator.pushNamed(context, '/pages/swiper');
          },
        ),
        RaisedButton(
          child: Text('http请求'),
          onPressed: () {
            // 路由跳转及传值
            // 运用场景：页面跳转了，头部返回键默认返回上一个页面
            Navigator.pushNamed(context, '/pages/http');
          },
        ),
      ]);
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
    // 在首页实现自定义Tab，并解决顶部appBar的问题
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true, // Tab太多时，可以左右滑动
                  tabs: <Widget>[
                    Tab(text: '热门1'),
                    Tab(text: '推荐2'),
                  ])
              )
            ]
          ),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Tab一'),
                  subtitle: Text('对应顶部第一个Tab'),
                ),
                ListTile(
                  title: Text('Tab一'),
                  subtitle: Text('对应顶部第一个Tab'),
                ),
              ]
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('Tab二'),
                  subtitle: Text('对应顶部第二个Tab'),
                ),
                ListTile(
                  title: Text('Tab二'),
                  subtitle: Text('对应顶部第二个Tab'),
                ),
              ]
            ),
          ]
        ),
      ),
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
