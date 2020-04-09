import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  // 接受别的组件传过来的值
  final arguments;
  Forms({this.arguments});

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  //  获取输入框的值
  // 1、初始化输入框的值
  var _userName = new TextEditingController();
  @override
  void initState() {
    super.initState();

    this._userName.text = '初始值';
  }

  // 单选框
  int _sex = 1;

  // 多选框
  bool _flag = false;


  // 多选demo数据
  List listDatas = [
    {
      'checked': false,
      'title': '抽烟',
      'subtitle': '一天几包烟',
    },
    {
      'checked': false,
      'title': '喝酒',
      'subtitle': '每天二两',
    },
    {
      'checked': false,
      'title': '烫头',
      'subtitle': '渣男锡纸烫',
    },
  ];
  List<Widget> _getListDatas () {

    List<Widget> tempList = [];
    // for循环生成数据
    for (var i = 0; i < this.listDatas.length; i++) {
      tempList.add(
        CheckboxListTile(
          value: this.listDatas[i]['checked'],
          onChanged: (v) {
            setState(() {
              this.listDatas[i]['checked'] = v;
            });
          },
          title: Text(this.listDatas[i]['title']),
          subtitle: Text(this.listDatas[i]['subtitle']),
        ),
      );
    }

    return tempList;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.arguments['title'])),
      // 注意：当页面过长超出屏幕的长度时，要加个SingleChildScrollView组件包裹下，可实现滑动效果
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              // 单行输入框
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.people), // 输入框前面加图标
                    hintText: '请输入用户名!!', // 占位符，相当于placeholder
                    border: OutlineInputBorder() // 输入框获取焦点时有边框
                    ),
                // 2、绑定,并获取
                controller: this._userName,
                onChanged: (value) {
                  setState(() {
                    this._userName.text = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity, // 实现Container自适应宽度
                child: RaisedButton(
                  child: Text('点击按钮获取值'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    print(this._userName.text);
                  },
                ),
              ),
              SizedBox(height: 20),
              // 文本域
              TextField(
                maxLines: 2,
                decoration: InputDecoration(
                    hintText: '多行输入框！', // 占位符，相当于placeholder
                    border: OutlineInputBorder() // 输入框获取焦点时有边框
                    ),
              ),
              SizedBox(height: 20),
              // 输入框组件
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: '密码输入框！', // 占位符，相当于placeholder
                    border: OutlineInputBorder() // 输入框获取焦点时有边框
                    ),
              ),
              SizedBox(height: 20),
              // labelText
              TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: '账号', border: OutlineInputBorder() // 输入框获取焦点时有边框
                    ),
              ),
              SizedBox(height: 20),

              // 单选框，当Radio组件的groupValue值是一样的话，就是一组单选单选框组
              Row(children: <Widget>[
                Text('男'),
                Radio(
                  value: 1,
                  onChanged: (val) {
                    setState(() {
                      this._sex = val;
                    });
                  },
                  groupValue: this._sex,
                ),
                Text('女'),
                Radio(
                  value: 2,
                  onChanged: (val) {
                    setState(() {
                      this._sex = val;
                    });
                  },
                  groupValue: this._sex,
                ),
              ]),
              SizedBox(height: 20),

              // Checkbox
              Checkbox(
                value: this._flag,
                onChanged: (v) {
                  setState(() {
                    this._flag = v;
                  });
                },
              ),

              // Checkbox和List列表相结合布局,实现多选
              Column(children: this._getListDatas()),



              RaisedButton(
                child: Text('跳转Search页面'),
                onPressed: () {
                  // 注意点：路径不能写成'./pages/search','/pages/search'即可
                  Navigator.of(context).pushReplacementNamed('/pages/search', arguments: {'params': '有状态路由传参'});
                },
              )
            ]
          )
        )
      )
    );
  }
}

