import 'package:flutter/material.dart';
import 'package:m_tjresearch/bottom_nav/home_page.dart';
import 'package:m_tjresearch/bottom_nav/participate_page.dart';
import 'package:m_tjresearch/bottom_nav/expert_page.dart';
import 'package:m_tjresearch/bottom_nav/essay_page.dart';
import 'package:m_tjresearch/bottom_nav/myself_page.dart';

/*导航页*/
class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _IndexState();
  }
}

class _IndexState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      title: Text("预测"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      title: Text("参与"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.person_pin),
      title: Text("专家"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.description),
      title: Text("资讯"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      title: Text("我的"),
    ),
  ];

  int currentIndex;

  final pages = [HomePage(), ParticipatePage(),ExpertPage(), EssayPage(), MyselfPage()];

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("腾景经济预测",textAlign: TextAlign.right,),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed, //修改该属性可设置导航栏类型：shifting或fixed
        onTap: (index) {
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }
}
