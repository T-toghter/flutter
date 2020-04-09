import 'package:flutter/material.dart';

void main() {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AppBar')
        ),
        body: HomeContent(),
      ),
    );
  }
}

// Image组件
// 一、引入远程图片Image.network('')

// 二、引入本地图片
//  1、在根目录建立一个images文件夹，再在images文件夹下建立两个文件夹，一个为2.0x,一个为3.0x，分别放置2倍图和3倍图，正常的图片直接放置到images文件夹下
//  2、在pubspec.yaml文件中申明本地图片(注意点：assets要和其他代码左对齐，不然会报错)，例如：

// flutter:
//   # The following line ensures that the Material Icons font is
//   # included with your application, so that you can use the icons in
//   # the material Icons class.
//   uses-material-design: true

//   # To add assets to your application, add an assets section, like this:
//   assets:
//     - images/a.JPG


class HomeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          "images/a.JPG",
          fit: BoxFit.cover,
        ),
        width: 300.0,
        height: 300.0
      ),
    );
  }
}