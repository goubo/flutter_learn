import 'package:flutter/material.dart';
import 'package:komga_read/page/komga/komga.dart';

import 'components/bar_item.dart';
import 'page/bookshelf/bookshelf.dart';
import 'page/setting/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Komga 阅读器',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MainScaffold(),
    );
  }
}

class MainScaffold extends StatefulWidget {
  const MainScaffold({Key? key}) : super(key: key);

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: IndexedStack(index: _currentIndex, children: const [
            BookShelf(),
            KomgaIndex(),
            Setting(),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BarItem("library", "书架"),
            BarItem("network", "komga书库"),
            BarItem("setting", "设置"),
          ],
        ));
  }
}
