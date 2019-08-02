import 'package:flutter/material.dart';



class MyselfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        //导航栏
        title: Text("腾景经济预测"),
        actions: <Widget>[
          //导航栏右侧菜单
          IconButton(icon: Icon(Icons.share), onPressed: () {}),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  height:200,
                  child: Image.asset("images/myself/bg.png"),
                ),
                Positioned(
                  top:55,
                  width: 70,
                  height:70,
                  child: Image.asset("images/myself/avatar.png"),
                ),
                Positioned(
                  top:140,
                  child: Text("未登录",style: TextStyle(color: Colors.white,fontSize: 20),),
                )
              ],
            )
          ),
          //
          Container(
            padding:const EdgeInsets.symmetric(vertical: 0,horizontal: 20),
            decoration:BoxDecoration(
              // color:Colors.blue,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(

                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:20),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.toc),
                              Text("个人信息")
                            ],
                          ),
                        )
                        
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.toc),
                            Text("个人信息")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.toc),
                            Text("个人信息")
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.toc),
                            Text("个人信息")
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                // Column(
                //   children: <Widget>[
                //     Row(
                //       children: <Widget>[
                //         Icon(Icons.toc),
                //         Text("个人信息")
                //       ],
                //     ),
                //     Row(
                //       children: <Widget>[
                //         Icon(Icons.toc),
                //         Text("个人信息")
                //       ],
                //     ),
                //     Row(
                //       children: <Widget>[
                //         Icon(Icons.toc),
                //         Text("个人信息")
                //       ],
                //     ),
                //     Row(
                //       children: <Widget>[
                //         Icon(Icons.toc),
                //         Text("个人信息")
                //       ],
                //     ),
                //     Row(
                //       children: <Widget>[
                //         Icon(Icons.toc),
                //         Text("个人信息")
                //       ],
                //     ),
                //   ],
                // ),
                // Column(
                //   children: <Widget>[
                //     Row(
                //       children: <Widget>[Text("aaa")],
                //     )
                //   ],
                // )
              ],
            ),
          )

        ],
      ),
    );
  }
}
