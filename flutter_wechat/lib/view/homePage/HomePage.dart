import 'package:flutter/material.dart';

import 'HomeView.dart';
import 'ContactView.dart';
import 'FindView.dart';
import 'MineView.dart';

// 主页
class HomePage extends StatefulWidget{
  @override
  createState() => new _HomePageState();
}


class _HomePageState extends State<HomePage>{
  final List<BottomNavigationBarItem> tabButtons = [
    new BottomNavigationBarItem(icon: new Icon(Icons.chat,color: Colors.grey)
      ,title: new Text("微信"),),
    new BottomNavigationBarItem(icon: new Icon(Icons.perm_contact_calendar,color: Colors.grey,)
      ,title: new Text("通讯录"),),
    new BottomNavigationBarItem(icon: new Icon(Icons.room,color: Colors.grey)
      ,title: new Text("发现"),),
    new BottomNavigationBarItem(icon: new Icon(Icons.perm_identity,color: Colors.grey)
      ,title: new Text("我"),),
  ];
  final List<StatefulWidget> tabViews = [
    new HomeView(),
    new ContactView(),
    new FindView(),
    new MineView()
  ];

  // 当前所处标签页
  int _tabCurIndex=0;

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("微信"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: null),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(items: tabButtons,type: BottomNavigationBarType.fixed,
        onTap: (int index){
          setState(() {
            _tabCurIndex = index;
          });
          print("____$index");
        },
        currentIndex: _tabCurIndex,
      ),
      body: tabViews[_tabCurIndex],
    );
  }

}