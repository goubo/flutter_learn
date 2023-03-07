import 'package:komga_read/generated/json/base/json_convert_content.dart';
import 'package:komga_read/entity/komga_result_entity.dart';

KomgaResultEntity $KomgaResultEntityFromJson(Map<String, dynamic> json) {
	final KomgaResultEntity komgaResultEntity = KomgaResultEntity();
	final List<dynamic>? content = jsonConvert.convertListNotNull<dynamic>(json['content']);
	if (content != null) {
		komgaResultEntity.content = content;
	}
	final KomgaResultPageable? pageable = jsonConvert.convert<KomgaResultPageable>(json['pageable']);
	if (pageable != null) {
		komgaResultEntity.pageable = pageable;
	}
	final int? totalElements = jsonConvert.convert<int>(json['totalElements']);
	if (totalElements != null) {
		komgaResultEntity.totalElements = totalElements;
	}
	final bool? last = jsonConvert.convert<bool>(json['last']);
	if (last != null) {
		komgaResultEntity.last = last;
	}
	final int? totalPages = jsonConvert.convert<int>(json['totalPages']);
	if (totalPages != null) {
		komgaResultEntity.totalPages = totalPages;
	}
	final KomgaResultSort? sort = jsonConvert.convert<KomgaResultSort>(json['sort']);
	if (sort != null) {
		komgaResultEntity.sort = sort;
	}
	final int? size = jsonConvert.convert<int>(json['size']);
	if (size != null) {
		komgaResultEntity.size = size;
	}
	final int? number = jsonConvert.convert<int>(json['number']);
	if (number != null) {
		komgaResultEntity.number = number;
	}
	final bool? first = jsonConvert.convert<bool>(json['first']);
	if (first != null) {
		komgaResultEntity.first = first;
	}
	final int? numberOfElements = jsonConvert.convert<int>(json['numberOfElements']);
	if (numberOfElements != null) {
		komgaResultEntity.numberOfElements = numberOfElements;
	}
	final bool? empty = jsonConvert.convert<bool>(json['empty']);
	if (empty != null) {
		komgaResultEntity.empty = empty;
	}
	return komgaResultEntity;
}

Map<String, dynamic> $KomgaResultEntityToJson(KomgaResultEntity entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['content'] =  entity.content;
	data['pageable'] = entity.pageable.toJson();
	data['totalElements'] = entity.totalElements;
	data['last'] = entity.last;
	data['totalPages'] = entity.totalPages;
	data['sort'] = entity.sort.toJson();
	data['size'] = entity.size;
	data['number'] = entity.number;
	data['first'] = entity.first;
	data['numberOfElements'] = entity.numberOfElements;
	data['empty'] = entity.empty;
	return data;
}

KomgaResultPageable $KomgaResultPageableFromJson(Map<String, dynamic> json) {
	final KomgaResultPageable komgaResultPageable = KomgaResultPageable();
	final KomgaResultPageableSort? sort = jsonConvert.convert<KomgaResultPageableSort>(json['sort']);
	if (sort != null) {
		komgaResultPageable.sort = sort;
	}
	final int? offset = jsonConvert.convert<int>(json['offset']);
	if (offset != null) {
		komgaResultPageable.offset = offset;
	}
	final int? pageNumber = jsonConvert.convert<int>(json['pageNumber']);
	if (pageNumber != null) {
		komgaResultPageable.pageNumber = pageNumber;
	}
	final int? pageSize = jsonConvert.convert<int>(json['pageSize']);
	if (pageSize != null) {
		komgaResultPageable.pageSize = pageSize;
	}
	final bool? paged = jsonConvert.convert<bool>(json['paged']);
	if (paged != null) {
		komgaResultPageable.paged = paged;
	}
	final bool? unpaged = jsonConvert.convert<bool>(json['unpaged']);
	if (unpaged != null) {
		komgaResultPageable.unpaged = unpaged;
	}
	return komgaResultPageable;
}

Map<String, dynamic> $KomgaResultPageableToJson(KomgaResultPageable entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['sort'] = entity.sort.toJson();
	data['offset'] = entity.offset;
	data['pageNumber'] = entity.pageNumber;
	data['pageSize'] = entity.pageSize;
	data['paged'] = entity.paged;
	data['unpaged'] = entity.unpaged;
	return data;
}

KomgaResultPageableSort $KomgaResultPageableSortFromJson(Map<String, dynamic> json) {
	final KomgaResultPageableSort komgaResultPageableSort = KomgaResultPageableSort();
	final bool? empty = jsonConvert.convert<bool>(json['empty']);
	if (empty != null) {
		komgaResultPageableSort.empty = empty;
	}
	final bool? sorted = jsonConvert.convert<bool>(json['sorted']);
	if (sorted != null) {
		komgaResultPageableSort.sorted = sorted;
	}
	final bool? unsorted = jsonConvert.convert<bool>(json['unsorted']);
	if (unsorted != null) {
		komgaResultPageableSort.unsorted = unsorted;
	}
	return komgaResultPageableSort;
}

Map<String, dynamic> $KomgaResultPageableSortToJson(KomgaResultPageableSort entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['empty'] = entity.empty;
	data['sorted'] = entity.sorted;
	data['unsorted'] = entity.unsorted;
	return data;
}

KomgaResultSort $KomgaResultSortFromJson(Map<String, dynamic> json) {
	final KomgaResultSort komgaResultSort = KomgaResultSort();
	final bool? empty = jsonConvert.convert<bool>(json['empty']);
	if (empty != null) {
		komgaResultSort.empty = empty;
	}
	final bool? sorted = jsonConvert.convert<bool>(json['sorted']);
	if (sorted != null) {
		komgaResultSort.sorted = sorted;
	}
	final bool? unsorted = jsonConvert.convert<bool>(json['unsorted']);
	if (unsorted != null) {
		komgaResultSort.unsorted = unsorted;
	}
	return komgaResultSort;
}

Map<String, dynamic> $KomgaResultSortToJson(KomgaResultSort entity) {
	final Map<String, dynamic> data = <String, dynamic>{};
	data['empty'] = entity.empty;
	data['sorted'] = entity.sorted;
	data['unsorted'] = entity.unsorted;
	return data;
}