import 'dart:convert';

import 'package:komga_read/generated/json/base/json_field.dart';
import 'package:komga_read/generated/json/komga_result_entity.g.dart';

@JsonSerializable()
class KomgaResultEntity {
  late List<dynamic> content;
  late KomgaResultPageable pageable;
  late int totalElements;
  late bool last;
  late int totalPages;
  late KomgaResultSort sort;
  late int size;
  late int number;
  late bool first;
  late int numberOfElements;
  late bool empty;

  KomgaResultEntity();

  factory KomgaResultEntity.fromJson(Map<String, dynamic> json) => $KomgaResultEntityFromJson(json);

  Map<String, dynamic> toJson() => $KomgaResultEntityToJson(this);

  KomgaResultEntity copyWith(
      {List<dynamic>? content,
      KomgaResultPageable? pageable,
      int? totalElements,
      bool? last,
      int? totalPages,
      KomgaResultSort? sort,
      int? size,
      int? number,
      bool? first,
      int? numberOfElements,
      bool? empty}) {
    return KomgaResultEntity()
      ..content = content ?? this.content
      ..pageable = pageable ?? this.pageable
      ..totalElements = totalElements ?? this.totalElements
      ..last = last ?? this.last
      ..totalPages = totalPages ?? this.totalPages
      ..sort = sort ?? this.sort
      ..size = size ?? this.size
      ..number = number ?? this.number
      ..first = first ?? this.first
      ..numberOfElements = numberOfElements ?? this.numberOfElements
      ..empty = empty ?? this.empty;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KomgaResultPageable {
  late KomgaResultPageableSort sort;
  late int offset;
  late int pageNumber;
  late int pageSize;
  late bool paged;
  late bool unpaged;

  KomgaResultPageable();

  factory KomgaResultPageable.fromJson(Map<String, dynamic> json) => $KomgaResultPageableFromJson(json);

  Map<String, dynamic> toJson() => $KomgaResultPageableToJson(this);

  KomgaResultPageable copyWith(
      {KomgaResultPageableSort? sort, int? offset, int? pageNumber, int? pageSize, bool? paged, bool? unpaged}) {
    return KomgaResultPageable()
      ..sort = sort ?? this.sort
      ..offset = offset ?? this.offset
      ..pageNumber = pageNumber ?? this.pageNumber
      ..pageSize = pageSize ?? this.pageSize
      ..paged = paged ?? this.paged
      ..unpaged = unpaged ?? this.unpaged;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KomgaResultPageableSort {
  late bool empty;
  late bool sorted;
  late bool unsorted;

  KomgaResultPageableSort();

  factory KomgaResultPageableSort.fromJson(Map<String, dynamic> json) => $KomgaResultPageableSortFromJson(json);

  Map<String, dynamic> toJson() => $KomgaResultPageableSortToJson(this);

  KomgaResultPageableSort copyWith({bool? empty, bool? sorted, bool? unsorted}) {
    return KomgaResultPageableSort()
      ..empty = empty ?? this.empty
      ..sorted = sorted ?? this.sorted
      ..unsorted = unsorted ?? this.unsorted;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}

@JsonSerializable()
class KomgaResultSort {
  late bool empty;
  late bool sorted;
  late bool unsorted;

  KomgaResultSort();

  factory KomgaResultSort.fromJson(Map<String, dynamic> json) => $KomgaResultSortFromJson(json);

  Map<String, dynamic> toJson() => $KomgaResultSortToJson(this);

  KomgaResultSort copyWith({bool? empty, bool? sorted, bool? unsorted}) {
    return KomgaResultSort()
      ..empty = empty ?? this.empty
      ..sorted = sorted ?? this.sorted
      ..unsorted = unsorted ?? this.unsorted;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
