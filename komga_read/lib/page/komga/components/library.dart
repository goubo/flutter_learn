import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:komga_read/components/komga_widget.dart';
import 'package:komga_read/entity/komga_library_entity.dart';
import 'package:komga_read/entity/komga_series_entity.dart';
import 'package:komga_read/entity/komga_series_parameters_entity.dart';
import 'package:komga_read/page/komga/components/search_drawer.dart';
import 'package:komga_read/page/komga/components/series.dart';
import 'package:komga_read/utils/komga_api.dart';
import 'package:logger/logger.dart';

class KomgaLibrary extends StatefulWidget {
  const KomgaLibrary(this.library, {Key? key}) : super(key: key);
  final KomgaLibraryEntity library;

  @override
  State<KomgaLibrary> createState() => _KomgaLibraryState();
}

class _KomgaLibraryState extends State<KomgaLibrary> {
  var logger = Logger();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<KomgaSeriesEntity> _list = [KomgaSeriesEntity(name: "loadding")];
  String totalElements = "";

  final ScrollController _scrollController = ScrollController(); //listview的控制器
  KomgaSeriesParametersEntity komgaSeriesParametersEntity = KomgaSeriesParametersEntity(readStatus: []);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    komgaSeriesParametersEntity.libraryId = [widget.library.id!];
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        logger.i("划到最低端加载下一页");
        //加载下一页
      }
    });
    loadData();
  }

  loadData() async {
    var result = await KomgaApi.instance.getSeries(komgaSeriesParametersEntity);
    totalElements = "(${result.totalElements})";
    _list.removeAt(_list.length - 1);
    for (Map<String, dynamic> value in result.content!) {
      var komgaSeries = KomgaSeriesEntity.fromJson(value);
      komgaSeries.thumbnail = await KomgaApi.instance.getSeriesThumbnail("series", komgaSeries.id!);
      _list.add(komgaSeries);
    }
    setState(() {});
  }

  Future<void> _onRefresh() {
    return Future(() {
      _list = [];
      loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("${widget.library.name}$totalElements"),
        actions: [
          IconButton(onPressed: () => _scaffoldKey.currentState!.openEndDrawer(), icon: const Icon(Icons.filter_list))
        ],
      ),
      endDrawer: Builder(builder: (context) {
        return SearchDrawer(komgaSeriesParametersEntity, onRefresh: _onRefresh);
      }),
      body: RefreshIndicator(
        onRefresh: _onRefresh,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: _list.length,
          itemBuilder: (BuildContext context, int index) {
            return SeriesItem(_list[index]);
          },
        ),
      ),
    );
  }
}

class SeriesItem extends StatelessWidget {
  SeriesItem(this.seriesEntity, {Key? key}) : super(key: key);
  final KomgaSeriesEntity seriesEntity;
  final logger = Logger();

  @override
  Widget build(BuildContext context) {
    if (seriesEntity.name == "loadding") {
      return const SpinKitSpinningLines(
        color: Colors.blue,
        size: 50.0,
      );
    }
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => KomgaSeries(seriesEntity)));
      },
      child: Row(
        children: [
          KomgaImageWidget(url: seriesEntity.thumbnail!),
          getSeriesInfoWidget(),
        ],
      ),
    );
  }

  Widget getSeriesInfoWidget() {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(seriesEntity.name!),
          Text("已读：${seriesEntity.booksReadCount}/${seriesEntity.booksCount}"),
        ],
      ),
    ));
  }
}
