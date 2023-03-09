/// 查询系列的参数
class KomgaSeriesParametersEntity {
  List<String>? libraryId = []; // 书库Id
  String? seriesId; // 书库Id
  String? search; // 搜索名称
  List<String>? readStatus = []; //阅读状态
  String? sort;

  bool? complete = false;

  int page = 0;
  int size = 50;

  KomgaSeriesParametersEntity({this.libraryId, this.search, this.readStatus, this.complete, this.sort, this.seriesId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["library_id"] = libraryId ?? [];
    data["series_id"] = seriesId ?? [];
    data["read_status"] = readStatus ?? [];
    data["search"] = search ?? "";
    data["complete"] = complete;
    data["page"] = page;
    data["size"] = size;
    data["sort"] = sort;
    return data;
  }
}
