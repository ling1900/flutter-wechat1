import 'package:flutter/material.dart';

// 页面：我的信息
class MyInfoPage extends StatefulWidget{
  @override
  _MyInfoPageState createState() => new _MyInfoPageState();
}


class _MyInfoPageState extends State<MyInfoPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("我的信息"),),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            color: Colors.grey[200],
            child: new Container(
              color: Colors.white,
              height: 80.0,
              child: new ListTile(
                title: new Text("头像"),
                trailing: new Image.asset("images/xk.jpg",width: 45.0,height: 45.0,),
              ),
            ),
          ),
          new Container(
            padding:const EdgeInsets.only(top: 20.0),
            color: Colors.grey[200],
            child: new Container(
              color: Colors.white,
              height: 45.0,
              child: new ListTile(
                title: new Text("名字"),
                trailing: new Text("Tony"),
              ),
            ),
          ),
          new Container(
            color: Colors.white,
            height: 45.0,
            child: new ListTile(
              title: new Text("微信号"),
              trailing: new Text("tony001"),
            ),
          ),
          new Container(
            color: Colors.white,
            height: 45.0,
            child: new ListTile(
              title: new Text("我的二维码"),
              trailing: new Icon(Icons.fullscreen),
            ),
          ),
          new Container(
            color: Colors.white,
            height: 45.0,
            child: new ListTile(
              title: new Text("更多"),
              trailing: new Icon(Icons.arrow_forward_ios,size: 17.0,),
            ),
          ),
          new Container(
            color: Colors.white,
            height: 45.0,
            child: new ListTile(
              title: new Text("我的地址"),
              trailing: new Icon(Icons.arrow_forward_ios,size: 17.0,),
            ),
          ),
        ],
      ),
    );
  }
}