import 'package:flutter/material.dart';
import 'package:komga_read/components/list_item.dart';
import 'package:komga_read/entity/komga_library_entity.dart';
import 'package:komga_read/page/komga/components/library.dart';
import 'package:komga_read/utils/komga_api.dart';
import 'package:logger/logger.dart';

class KomgaIndex extends StatelessWidget {
  const KomgaIndex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("书库"),
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  List<KomgaLibraryEntity> _itemList = [];
  final ScrollController _scrollController = ScrollController(); //listview的控制器
  var logger = Logger();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        logger.i("划到最低端加载下一页");
      }
    });
    loadData();
  }

  Future<void> _onRefresh() {
    return Future(() async {
      _itemList = [];
      loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      // 下拉重新加载
      onRefresh: _onRefresh,
      child: ListView.builder(
          itemCount: _itemList.length,
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(), //不满一页滚动，能够上拉下拉刷新
          itemBuilder: (BuildContext context, int index) {
            return ListItem(_itemList[index].name!, KomgaLibrary(_itemList[index]));
          }),
    );
  }

  Future<List<KomgaLibraryEntity>> loadData() async {
    var library = await KomgaApi.instance.getLibrary();
    for (var lib in library) {
      _itemList.add(lib);
    }
    setState(() {});
    return library;
  }
}
