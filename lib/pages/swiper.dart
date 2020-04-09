import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  List<Map> _imgsList = [
    {'url': 'https://www.itying.com/images/flutter/1.png'},
    {'url': 'https://www.itying.com/images/flutter/2.png'},
    {'url': 'https://www.itying.com/images/flutter/3.png'},
    {'url': 'https://www.itying.com/images/flutter/4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Swiper组件')),
      body: Container(
        // AspectRatio组件，让内容按比例平铺，适应各种手机端
        child: AspectRatio(
          aspectRatio: 16/9,
          child: new Swiper(
            itemBuilder: (BuildContext context,int index){
              return new Image.network(
                _imgsList[index]['url'],
                fit: BoxFit.fill,
              );
            },
            itemCount: _imgsList.length,
            pagination: new SwiperPagination(),  // 分页器
            // control: new SwiperControl(),        // 左右箭头
          )
        )
      ),
    );
  }
}