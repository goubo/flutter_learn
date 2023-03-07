import 'package:flutter/material.dart';
import 'package:komga_read/components/list_item.dart';
import 'package:komga_read/entity/komga_library_entity.dart';
import 'package:komga_read/page/setting/setting.dart';
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
  List<KomgaLibraryEntity> itemList = [];
  final ScrollController _scrollController = ScrollController(); //listview的控制器
  var logger = Logger();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      logger.i(_scrollController.position.pixels);
      logger.i(_scrollController.position.maxScrollExtent);
      logger.i("划到最低端");
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        logger.i("划到最低端");
      }
    });
    loadData();
  }

  Future<void> _onRefresh() {
    return Future(() async {
      logger.i('refresh');
      itemList = [];
      loadData();
    });
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      // 下拉重新加载
      onRefresh: _onRefresh,
      child: ListView.builder(
          itemCount: itemList.length,
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(), //不满一页滚动，能够上拉下拉刷新
          itemBuilder: (BuildContext context, int index) {
            return ListItem(itemList[index].name, const Setting());
          }),
    );
  }

  Future<List<KomgaLibraryEntity>> loadData() async {
    logger.i("加载书库数据");
    var library = await KomgaApi.instance.getLibrary();
    for (var lib in library) {
      itemList.add(lib);
    }
    setState(() {});
    return library;
  }
}
