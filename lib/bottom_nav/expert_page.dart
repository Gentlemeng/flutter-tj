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

class _ScaffoldRouteState extends State<ScaffoldRoute>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 1;
  TabController _tabController; //需要定义一个Controller
  // List tabs = [ExpertRepPage(), ExpertVoicePage(), BozhiSignPage()];
  List tabs = ['专家库', '专家之声', '博智宏观论坛'];
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
        // tabs: tabs.map((e) => Tab()).toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabsWidgets.map((e) {
          //创建3个Tab页
          return Container(
            alignment: Alignment.center,
            // child: Text(e, textScaleFactor: 5),
            child: e,
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
      // floatingActionButton: FloatingActionButton(
      //     //悬浮按钮
      //     child: Icon(Icons.add),
      //     onPressed: _onAdd
      // ),
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
    void _textFieldChanged(String str) {
      print(str);
    }

    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Row(
              children: <Widget>[
                //专家分类
                Expanded(
                    flex: 1,
                    child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        height: 48,
                        // child:
                        // Flexible(
                        child: new ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("全部专家", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("宏观经济", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("货币金融", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("财政税收", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("体制改革", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("产业经济", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("人口就业", style: TextStyle(fontSize: 12))
                                  ],
                                )),
                            Container(
                                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                                child: Column(
                                  children: <Widget>[
                                    Text("国际问题", style: TextStyle(fontSize: 12))
                                  ],
                                ))
                          ],
                          // ),
                        ))),
              ],
            ),
          ),

          // 关键字搜索
          Expanded(
            flex: 1,
            child: TextField(
              // keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  // icon: Icon(Icons.search),
                  labelText: '关键字搜索',
                  // helperText: '请输入你的真实姓名',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    //            borderSide: BorderSide(color: Colors.red, width: 3.0, style: BorderStyle.solid)//没什么卵效果
                  )),
              onChanged: _textFieldChanged,
              autofocus: false,
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              // padding: ,
              child: ListView(
                padding: const EdgeInsets.all(2),
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child:
                            //专家头像
                            Column(
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 150,
                                // decoration: BoxDecoration(
                                //     // color: Colors.red
                                // ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: new Image.asset('images/expert01.jpg',
                                      fit: BoxFit.cover),
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: //专家信息
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                //收藏
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("曹远征"),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star_border),
                                        Text("收藏")
                                      ],
                                    )
                                  ],
                                ),
                                //职位
                                Row(
                                  children: <Widget>[
                                    Text("中银研究有限公司董事长")
                                  ],
                                ),
                                //研究领域
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("宏观经济"),
                                        // Text("货币金融"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("货币金融"),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("宏观经济"),
                                        // Text("货币金融"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("货币金融"),
                                      ],
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          )
                        )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child:
                            //专家头像
                            Column(
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 150,
                                // decoration: BoxDecoration(
                                //     // color: Colors.red
                                // ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: new Image.asset('images/expert01.jpg',
                                      fit: BoxFit.cover),
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: //专家信息
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                //收藏
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("曹远征"),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star_border),
                                        Text("收藏")
                                      ],
                                    )
                                  ],
                                ),
                                //职位
                                Row(
                                  children: <Widget>[
                                    Text("中银研究有限公司董事长")
                                  ],
                                ),
                                //研究领域
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("宏观经济"),
                                        // Text("货币金融"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("货币金融"),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("宏观经济"),
                                        // Text("货币金融"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("货币金融"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child:
                            //专家头像
                            Column(
                          children: <Widget>[
                            Container(
                                width: 100,
                                height: 150,
                                // decoration: BoxDecoration(
                                //     // color: Colors.red
                                // ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: new Image.asset('images/expert01.jpg',
                                      fit: BoxFit.cover),
                                )),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: //专家信息
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                //收藏
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("曹远征"),
                                    Row(
                                      children: <Widget>[
                                        Icon(Icons.star_border),
                                        Text("收藏")
                                      ],
                                    )
                                  ],
                                ),
                                //职位
                                Row(
                                  children: <Widget>[
                                    Text("中银研究有限公司董事长")
                                  ],
                                ),
                                //研究领域
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("宏观经济"),
                                        // Text("货币金融"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("货币金融"),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text("宏观经济"),
                                        // Text("货币金融"),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text("货币金融"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
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
      child: Column(
        children: <Widget>[],
      ),
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
    // return Container(child: Expanded(child: Row(),));
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Row(),
          )
        ],
      ),
    );
  }
}

//公共结构-专家分类
class CategoryColumn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CategoryColumn();
  }
}

class _CategoryColumn extends State<CategoryColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("全部专家", style: TextStyle(fontSize: 12))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("宏观经济", style: TextStyle(fontSize: 12))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("货币金融", style: TextStyle(fontSize: 12))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("财政税收", style: TextStyle(fontSize: 12))
                  ],
                )),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("体制改革", style: TextStyle(fontSize: 12))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("产业经济", style: TextStyle(fontSize: 12))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("人口就业", style: TextStyle(fontSize: 12))
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                child: Column(
                  children: <Widget>[
                    Text("国际问题", style: TextStyle(fontSize: 12))
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
