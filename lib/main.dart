import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:m_tjresearch/bottom_nav/index_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return 
    // MaterialApp(
    //   routes: {
    //     "/": (_) => new WebviewScaffold(
    //       url: "https://m.tjresearch.com",
    //       appBar: new AppBar(
    //         title: new Text("Widget webview"),
    //       ),
    //     ),
    //   },
    // );
    MaterialApp(
      title: '腾景经济预测',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
    );
  }
}
