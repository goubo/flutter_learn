import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:komga_read/components/komga_widget.dart';
import 'package:komga_read/entity/komga_book_entity.dart';
import 'package:komga_read/entity/komga_series_entity.dart';
import 'package:komga_read/entity/komga_series_parameters_entity.dart';
import 'package:komga_read/utils/komga_api.dart';
import 'package:logger/logger.dart';

class KomgaSeries extends StatefulWidget {
  const KomgaSeries(this.seriesEntity, {Key? key}) : super(key: key);
  final KomgaSeriesEntity seriesEntity;

  @override
  State<KomgaSeries> createState() => _KomgaSeriesState();
}

class _KomgaSeriesState extends State<KomgaSeries> {
  var logger = Logger();

  List<KomgaBookEntity> books = [];
  KomgaSeriesParametersEntity komgaSeriesParametersEntity = KomgaSeriesParametersEntity(
    readStatus: [],
  );

  @override
  void initState() {
    komgaSeriesParametersEntity.seriesId = widget.seriesEntity.id;
    super.initState();
    loadData();
  }

  Widget list = const SpinKitSpinningLines(
    color: Colors.blue,
    size: 50.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              buildSearchInfo(widget.seriesEntity),
              Expanded(
                //解决列表嵌套问题
                child: list,
              )
            ],
          ),
        ));
  }

  loadData() async {
    var result = await KomgaApi.instance.getBooks(komgaSeriesParametersEntity);
    // totalElements = "(${result.totalElements})";
    for (Map<String, dynamic> value in result.content!) {
      KomgaBookEntity komgaBookEntity = KomgaBookEntity.fromJson(value);
      komgaBookEntity.thumbnail = await KomgaApi.instance.getSeriesThumbnail("books", komgaBookEntity.id!);
      books.add(komgaBookEntity);
    }
    list = ListView.builder(
      shrinkWrap: true,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return buildBooksInfo(books[index]);
      },
    );
    setState(() {});
  }
}

Widget buildBooksInfo(KomgaBookEntity komgaBookEntity) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.all(3),
      child: Column(
        children: [
          Row(
            children: [
              KomgaImageWidget(
                url: komgaBookEntity.thumbnail!,
                height: 80,
                width: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(komgaBookEntity.name!),
                  Text("进度:${getReadStatus(komgaBookEntity)}"),
                ],
              )
            ],
          ),
          LinearProgressIndicator(
            backgroundColor: Colors.grey[200],
            valueColor: const AlwaysStoppedAnimation(Colors.blue),
            value: getReadProgress(komgaBookEntity),
          ),
        ],
      ),
    ),
  );
}

double getReadProgress(KomgaBookEntity komgaBookEntity) {
  if (komgaBookEntity.readProgress == null) {
    return 0.0;
  } else {
    int page = komgaBookEntity.readProgress?.page ?? 0;
    int pagesCount = komgaBookEntity.media!.pagesCount!;
    return page / pagesCount;
  }
}

String getReadStatus(KomgaBookEntity komgaBookEntity) {
  if (komgaBookEntity.readProgress == null) {
    return "未读:0/${komgaBookEntity.media?.pagesCount}";
  } else {
    var page = "${komgaBookEntity.readProgress?.page}/${komgaBookEntity.media?.pagesCount}";
    if (komgaBookEntity.readProgress!.completed!) {
      return "已读:$page";
    }

    return "阅读中:$page";
  }
}

Widget buildSearchInfo(KomgaSeriesEntity seriesEntity) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      KomgaImageWidget(url: seriesEntity.thumbnail!),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              seriesEntity.name!,
              style: const TextStyle(fontSize: 19),
            ),
            DecoratedBox(
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            ),
            Text("已读：${seriesEntity.booksReadCount}/${seriesEntity.booksCount}"),
          ],
        ),
      )
    ],
  );
}
