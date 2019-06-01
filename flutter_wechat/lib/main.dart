import 'package:flutter/material.dart';

import 'view/homePage/HomePage.dart';


void main() => runApp(new MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "title",
      theme: new ThemeData(
        primaryColor: Colors.black,
      ),
      // 主页
      home: new Center(
        child: new HomePage(),
      ),
    );
  }
}

// MaterialApp：应用
// Scaffold：常用页面布局

