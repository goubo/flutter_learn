import 'package:flutter/material.dart';
import 'package:mm_liorado/page1.dart';
import 'package:mm_liorado/text_show.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'common/constant.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: MaterialApp(
          title: "拉多营地",
          initialRoute: "/",
          routes: {
            "/": (context) => const MainState(),
            "/page1": (context) => const Page1(),
            "/page2": (context) => const Page2(),
            "/page3": (context) => const Page3(),
            "/text_show": (context) => const TextShow(),
          },
        ),
        onWillPop: () async {
          return true;
        });
  }
}

class MainState extends StatefulWidget {
  const MainState({Key? key}) : super(key: key);

  @override
  State<MainState> createState() => _MainStateState();
}

class _MainStateState extends State<MainState> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    initFromCache();
  }

  //从缓存中获取信息
  void initFromCache() async {
    final SharedPreferences prefs = await _prefs;
    bool begin = prefs.getBool("prelude") ?? false;
    if (begin) {
      //打开首页
    } else {
      //async 中，使用定时打开页面
      Future.delayed(const Duration(milliseconds: 1), () {
        //跳转到路由，传递参数，并且删除之前的所有路由路径
        Navigator.pushNamedAndRemoveUntil(context, "/text_show", (_) => false,
            arguments: {"text": preludeText, "plot": "prelude"});
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => {Navigator.pushNamed(context, "/page2")},
          child: const Text("page1"),
        ),
      ],
    );
  }
}
