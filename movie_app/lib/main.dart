import 'package:flutter/material.dart';

import 'components/tabbar_item.dart';
import 'views/group/group.dart';
import 'views/home/home.dart';
import 'views/mall/mall.dart';
import 'views/profile/profile.dart';
import 'views/subject/subject.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "电影排行",
      home: const MyStackPage(),
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(primary: Colors.green),
        //主题颜色
        highlightColor: Colors.transparent,
        //高亮色设置为透明
        splashColor: Colors.transparent, // 点击时的波纹动画设置为透明色
      ),
    );
  }
}

class MyStackPageState extends State<MyStackPage> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //注释掉之后，只显示 IndexedStack 里 Scaffold 的 appbar
      // appBar: AppBar(
      //   title: Text("TOP"),
      // ),
      body: Center(
          child: IndexedStack(
        //
        index: _currentIndex,
        children: const [
          Home(),
          Subject(),
          Group(),
          Mall(),
          Profile(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        // 底部按钮
        currentIndex: _currentIndex, // 高亮索引
        type: BottomNavigationBarType.fixed, // 按钮太多默认会自适应， fixed固定禁用动态
        items: [
          TabbarItem("home", "首页"),
          TabbarItem("subject", "书影音"),
          TabbarItem("group", "小组"),
          TabbarItem("mall", "市集"),
          TabbarItem("profile", "我的"),
        ],
        onTap: (int index) {
          //点击item 回调索引
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class MyStackPage extends StatefulWidget {
  const MyStackPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyStackPageState();
  }
}
