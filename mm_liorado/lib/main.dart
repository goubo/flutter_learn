import 'package:flutter/material.dart';
import 'package:mm_liorado/common/utils/sp.dart';
import 'package:mm_liorado/page1.dart';
import 'package:mm_liorado/narration.dart';

import 'common/constant.dart';
import 'common/global.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: MaterialApp(
          title: "拉多营地",
          initialRoute: mainPage,
          routes: {
            mainPage: (context) => const MainState(),
            "/page1": (context) => const Page1(),
            "/page2": (context) => const Page2(),
            "/page3": (context) => const Page3(),
            narration: (context) => const Narration(),
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
  @override
  void initState() {
    super.initState();
    checkNarration();
  }

  //从缓存中获取信息
  void checkNarration() async {
    bool begin = await PersistentStorage().getStorage(prelude) ?? false;
    if (!begin) {
      //async 中，使用定时打开页面
      Future.delayed(const Duration(milliseconds: 1), () {
        //跳转到路由，传递参数，并且删除之前的所有路由路径
        Navigator.pushNamedAndRemoveUntil(context, narration, (_) => false,
            arguments: TextShowArguments(preludeText, prelude, mainPage));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => {Navigator.pushNamed(context, "/page2")},
            child: const Text("page1"),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () => {PersistentStorage().clear()},
              child: const Text("重置缓存")),
        ],
      ),
    );
  }
}
