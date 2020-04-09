import 'package:flutter/material.dart';


// 自定义导航栏，tabController实现Tab切换

class AppBarDemo extends StatefulWidget {
  AppBarDemo({Key key}) : super(key: key);

  @override
  _AppBarDemoState createState() => _AppBarDemoState();
}

class _AppBarDemoState extends State<AppBarDemo> with SingleTickerProviderStateMixin {

  TabController _tabController;
  @override
  void initState() {    // 生命周期函数->初始化
    super.initState();
    
    _tabController = new TabController(
      length: 2,
      vsync: this
    );
    // 监听到点击Tab时事件
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('自定义导航栏'),
          // 居中显示title
          centerTitle: true,
          // 左侧添加自定义图标
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('menu');
          //   },
          // ),
          // 右侧添加自定义图标
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            )
          ],
          // TabBar数组数量要和TabBarView数组的数量对应，一个Tab对应一个页面
          bottom: TabBar(
            controller: this._tabController,
            tabs: <Widget>[
              Tab(text: '热门'),
              Tab(text: '推荐'),
          ]),
        ),
        body: TabBarView(
          controller: this._tabController,
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

