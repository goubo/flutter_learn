class KomgaResultEntity {
  List<Map<String, dynamic>>? content;
  Pageable? pageable;
  int? totalElements;
  bool? last;
  int? totalPages;
  int? size;
  int? number;
  Sort? sort;
  bool? first;
  int? numberOfElements;
  bool? empty;

  KomgaResultEntity(
      {this.content,
      this.pageable,
      this.totalElements,
      this.last,
      this.totalPages,
      this.size,
      this.number,
      this.sort,
      this.first,
      this.numberOfElements,
      this.empty});

  KomgaResultEntity.fromJson(Map<String, dynamic> json) {
    content = json['content'].cast<Map<String, dynamic>>();
    pageable = json['pageable'] != null ? Pageable.fromJson(json['pageable']) : null;
    totalElements = json['totalElements'];
    last = json['last'];
    totalPages = json['totalPages'];
    size = json['size'];
    number = json['number'];
    sort = json['sort'] != null ? Sort.fromJson(json['sort']) : null;
    first = json['first'];
    numberOfElements = json['numberOfElements'];
    empty = json['empty'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['content'] = content;
    if (pageable != null) {
      data['pageable'] = pageable!.toJson();
    }
    data['totalElements'] = totalElements;
    data['last'] = last;
    data['totalPages'] = totalPages;
    data['size'] = size;
    data['number'] = number;
    if (sort != null) {
      data['sort'] = sort!.toJson();
    }
    data['first'] = first;
    data['numberOfElements'] = numberOfElements;
    data['empty'] = empty;
    return data;
  }
}

class Pageable {
  Sort? sort;
  int? offset;
  int? pageNumber;
  int? pageSize;
  bool? paged;
  bool? unpaged;

  Pageable({this.sort, this.offset, this.pageNumber, this.pageSize, this.paged, this.unpaged});

  Pageable.fromJson(Map<String, dynamic> json) {
    sort = json['sort'] != null ? Sort.fromJson(json['sort']) : null;
    offset = json['offset'];
    pageNumber = json['pageNumber'];
    pageSize = json['pageSize'];
    paged = json['paged'];
    unpaged = json['unpaged'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sort != null) {
      data['sort'] = sort!.toJson();
    }
    data['offset'] = offset;
    data['pageNumber'] = pageNumber;
    data['pageSize'] = pageSize;
    data['paged'] = paged;
    data['unpaged'] = unpaged;
    return data;
  }
}

class Sort {
  bool? empty;
  bool? sorted;
  bool? unsorted;

  Sort({this.empty, this.sorted, this.unsorted});

  Sort.fromJson(Map<String, dynamic> json) {
    empty = json['empty'];
    sorted = json['sorted'];
    unsorted = json['unsorted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['empty'] = empty;
    data['sorted'] = sorted;
    data['unsorted'] = unsorted;
    return data;
  }
}
