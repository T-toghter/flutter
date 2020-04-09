import 'package:flutter/material.dart';
// 引入date格式化插件
import 'package:date_format/date_format.dart';

import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

// 日期组件
// 获取当前时间 var nowDate = new DateTime.now
// 转为时间戳，nowDate.millisecondsSinceEpoch
// 时间戳赚日期，new DateTime.fromMillisecondsSinceEpoch(时间戳)


// 使用Dart的第三方库
// 地址文档： pub.dev
// 在pubspec.yaml文件的dependencies下放入包
// 最后在文件中引入包使用即可


class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  // 注意点：
  // 1、推荐有状态组件申明变量，无状态组件申明变量会出现警告
  // 2、申明的变量要在出事函数里才能改变申明变量的值
  var nowDate = new DateTime.now();
  var timespan;
  var nowDate1;
  var nowDate2;


  DateTime _dateTime;


  // 通过处理异步方法获取时间值
  _showDtatePicker() {

    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1980-01-02'),
      maxDateTime: DateTime.parse('2030-10-20'),
      initialDateTime: _dateTime,
      dateFormat: 'yyyy-MMMM-dd',
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
  }


  @override
  void initState() { 
    super.initState();

    _dateTime = DateTime.now();
    
    this.timespan = nowDate.millisecondsSinceEpoch;
    this.nowDate1 = DateTime.fromMillisecondsSinceEpoch(1586239774681);
    this.nowDate2 = formatDate(nowDate, [yyyy, '年', mm, '月', dd, '日']);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Date组件')),
      body: Column(
        children: <Widget>[
          Text('当前日期：$nowDate'),
          Text('日期转时间戳：$timespan'),
          Text('时间戳转日期：$nowDate1'),
          Text('格式化日期：$nowDate2'),
          
          // InkWell用来包裹标签，使标签具有点击事件功能
          InkWell(
            child: Row(
              children: <Widget>[
                Text(formatDate(_dateTime, [yyyy, '年', mm, '月', dd, '日'])),
                Icon(Icons.arrow_drop_down)
              ]
            ),
            onTap: _showDtatePicker,
          ),

          // 第三方库时间插件
      ],),
    );
  }
}
