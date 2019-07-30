import 'package:flutter/material.dart';

class ExpertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "腾景经济预测",
      //     textAlign: TextAlign.right,
      //   ),
      // ),
      body: ScaffoldRoute()
      // Container(
      //   child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: <Widget>[
      //         Expanded(
      //           child: new Image.asset('images/expertBanner.png'),
      //         ),
      //         // new HomePage()
      //       ]),
      //   // child:
      // ),
    );
  }
}

class ScaffoldRoute extends StatefulWidget {
  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> with SingleTickerProviderStateMixin{
  int _selectedIndex = 1;
  TabController _tabController; //需要定义一个Controller
  // List tabs = [ExpertRepPage(), ExpertVoicePage(), BozhiSignPage()];
  List tabs = ['专家库','专家之声','博智宏观论坛'];
  List tabsWidgets = [ExpertRepPage(), ExpertVoicePage(), BozhiSignPage()];

  @override
  void initState() {
    super.initState();
    // 创建Controller  
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //导航栏
        title: Text("腾景经济预测"),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(Icons.dashboard, color: Colors.white), //自定义图标
            onPressed: () {
              // 打开抽屉菜单
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        centerTitle: true,
        bottom: TabBar(
            //生成Tab菜单
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            child: Text(e, textScaleFactor: 5),
          );
        }).toList(),
      ),
      // drawer: new MyDrawer(), //抽屉
      // bottomNavigationBar: BottomNavigationBar(
      //   // 底部导航
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.business), title: Text('Business')),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.school), title: Text('School')),
      //   ],
      //   currentIndex: _selectedIndex,
      //   fixedColor: Colors.blue,
      //   onTap: _onItemTapped,
      // ),
      floatingActionButton: FloatingActionButton(
          //悬浮按钮
          child: Icon(Icons.add),
          onPressed: _onAdd),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onAdd() {}
}

//专家库
class ExpertRepPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ExpertRep();
  }
}

class _ExpertRep extends State<ExpertRepPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // return new Scaffold(
    //   body: new Text("专家库"),
    // );
    return Container(
      child: Column(children: <Widget>[],),
    );
  }
}

// 专家之声
class ExpertVoicePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ExpertVoice();
  }
}

class _ExpertVoice extends State<ExpertVoicePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(children: <Widget>[],),
    );
  }
}

//博智宏观论坛
class BozhiSignPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _BozhiSign();
  }
}

class _BozhiSign extends State<BozhiSignPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: Expanded());
  }
}
