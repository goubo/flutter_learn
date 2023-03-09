import 'package:flutter/material.dart';
import 'package:komga_read/entity/komga_series_parameters_entity.dart';
import 'package:logger/logger.dart';

class SearchDrawer extends StatefulWidget {
  const SearchDrawer(this.komgaSeriesParametersEntity, {Key? key, required this.onRefresh}) : super(key: key);

  final Future<void> Function() onRefresh;
  final KomgaSeriesParametersEntity komgaSeriesParametersEntity;

  @override
  State<SearchDrawer> createState() => _SearchDrawerState();
}

class _SearchDrawerState extends State<SearchDrawer> {
  var logger = Logger();
  var searchController = TextEditingController();

  bool readStatusUnRead = false;
  bool readStatusInProgress = false;
  bool readStatusRead = false;
  bool complete = false;

  String? sortProperty = "none";
  String? sortOrder = "desc";

  @override
  void dispose() {
    super.dispose();
    widget.komgaSeriesParametersEntity.search = searchController.text;
    widget.komgaSeriesParametersEntity.readStatus = [];
    if (readStatusUnRead) widget.komgaSeriesParametersEntity.readStatus?.add("UNREAD");
    if (readStatusInProgress) widget.komgaSeriesParametersEntity.readStatus?.add("IN_PROGRESS");
    if (readStatusRead) widget.komgaSeriesParametersEntity.readStatus?.add("READ");
    if (complete) {
      widget.komgaSeriesParametersEntity.complete = complete;
    } else {
      widget.komgaSeriesParametersEntity.complete = null;
    }

    if (sortProperty != "none") {
      widget.komgaSeriesParametersEntity.sort = "$sortProperty,$sortOrder";
    } else {
      widget.komgaSeriesParametersEntity.sort = null;
    }

    widget.onRefresh();
  }

  @override
  void initState() {
    super.initState();
    searchController.text = widget.komgaSeriesParametersEntity.search ?? "";
    readStatusUnRead = widget.komgaSeriesParametersEntity.readStatus!.contains("UNREAD");
    readStatusInProgress = widget.komgaSeriesParametersEntity.readStatus!.contains("IN_PROGRESS");
    readStatusRead = widget.komgaSeriesParametersEntity.readStatus!.contains("READ");
    complete = widget.komgaSeriesParametersEntity.complete ?? false;
    if (widget.komgaSeriesParametersEntity.sort != null) {
      List<String> sort = widget.komgaSeriesParametersEntity.sort!.split(",");
      sortProperty = sort[0];
      sortOrder = sort[1];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: searchController,
              decoration: InputDecoration(
                icon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {
                    searchController.text = "";
                  },
                ),
              ),
            ),
          ),
          ListTile(
            title: Column(
              children: [
                CheckboxListTile(
                  title: const Text("未读"),
                  onChanged: (value) {
                    setState(() {
                      readStatusUnRead = value!;
                    });
                    if (value!) {
                      readStatusInProgress = value;
                    }
                  },
                  selected: readStatusUnRead,
                  value: readStatusUnRead,
                  dense: true,
                ),
                CheckboxListTile(
                  title: const Text("正在阅读"),
                  onChanged: (value) => setState(() => readStatusInProgress = value!),
                  value: readStatusInProgress,
                  selected: readStatusInProgress,
                  dense: true,
                ),
                CheckboxListTile(
                  title: const Text("已读"),
                  onChanged: (value) => setState(() => readStatusRead = value!),
                  value: readStatusRead,
                  selected: readStatusRead,
                  dense: true,
                ),
                CheckboxListTile(
                  title: const Text("完结"),
                  onChanged: (value) {
                    setState(() => complete = value!);
                  },
                  value: complete,
                  selected: complete,
                  dense: true,
                )
              ],
            ),
          ),
          const ListTile(title: Text("排序")),
          ListTile(
              title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, //空白包围
            children: [
              DropdownButton(
                  value: sortProperty,
                  items: const [
                    DropdownMenuItem(value: "none", child: Text("默认排序")),
                    DropdownMenuItem(value: "metadata.titleSort", child: Text("名称")),
                    DropdownMenuItem(value: "createdDate", child: Text("添加时间")),
                    DropdownMenuItem(value: "lastModifiedDate", child: Text("更新时间")),
                    DropdownMenuItem(value: "booksMetadata.releaseDate", child: Text("发布日期")),
                    DropdownMenuItem(value: "name", child: Text("文件夹名")),
                    DropdownMenuItem(value: "booksCount", child: Text("书籍数量")),
                  ],
                  onChanged: (value) => setState(() => sortProperty = value)),
              DropdownButton(
                  value: sortOrder,
                  items: const [
                    DropdownMenuItem(value: "desc", child: Text("降序")),
                    DropdownMenuItem(value: "asc", child: Text("升序")),
                  ],
                  onChanged: (value) => setState(() => sortOrder = value)),
            ],
          )),
        ],
      ),
    );
  }
}
