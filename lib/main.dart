import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; 
import './routers/Router.dart';


void main() {
  runApp(MyApp());
}


// 命名路由配置及跳转


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 去掉右上角debugger图标
      initialRoute: '/',  //初始化时加载的路由
      // 命名路由参数固定配置
      onGenerateRoute: onGenerateRoute,
      // flutter时间插件格式化
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US'),
      ],
    );
  }
}





