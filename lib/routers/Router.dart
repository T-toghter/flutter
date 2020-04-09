import 'package:flutter/material.dart';

import '../pages/list.dart';
import '../pages/form.dart';
import '../pages/search.dart';
import '../pages/appBar.dart';
import '../pages/button.dart';
import '../pages/date.dart';
import '../pages/swiper.dart';
import '../pages/http.dart';
import '../tabs/Tabs.dart';

// 路由
final routes = {
  '/': (context) => TabBottom(),
  '/pages/list': (context) => Lists(),
  '/pages/appBar': (context) => AppBarDemo(),
  '/pages/button': (context) => ButtonPage(),
  '/pages/date': (context) => DatePage(),
  '/pages/swiper': (context) => SwiperPage(),
  '/pages/http': (context) => Http(),
  '/pages/form': (context, {arguments}) => Forms(arguments: arguments),
  '/pages/search': (context, {arguments}) => SearchPage(arguments: arguments),
};


// 固定写法，命名路由参数配置
var onGenerateRoute = (RouteSettings settings) {
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};