import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/models/home_models.dart';
import 'package:movie_app/util/http_client.dart';
import 'package:movie_app/views/home/components/movie_list_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
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
  List<MovieItem> itemList = [];
  int rankIndex = 1;
  int skip = 40;

  final ScrollController _scrollController = ScrollController(); //listview的控制器

  @override
  void initState() {
    super.initState();
    loadData(false);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑动到了最底部');
        loadData(false);
      }
    });
  }

  void loadData(bool reset) {
    if (reset) {
      rankIndex = 1;
      skip = 0;
    }
    HttpRequest()
        .request(
            "https://api.wmdb.tv/api/v1/top?type=Imdb&skip=$skip&limit=10&lang=Cn")
        .then((value) {
      if (reset) itemList = [];
      for (var item in value.data) {
        itemList.add(MovieItem.fromJson(item)..rankIndex = rankIndex++);
      }
      skip += 10;
      setState(() {});
    }).catchError((onError) {
      print(onError);
    });
  }

  Future<void> _itemRefresh() {
    return Future(() => loadData(true));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RefreshIndicator(
        onRefresh: _itemRefresh,
        child: ScrollConfiguration(
          //触摸板滚动的设置
          behavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: PointerDeviceKind.values.toSet(),
          ),
          child: ListView.builder(
              itemCount: itemList.length,
              controller: _scrollController,
              itemBuilder: (BuildContext context, int index) {
                return MovieListItemWidget(itemList[index]);
              }),
        ),
      ),
    );
  }
}
