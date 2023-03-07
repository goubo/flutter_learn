// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:komga_read/entity/komga_library_entity.dart';
import 'package:komga_read/entity/komga_me_entity.dart';
import 'package:komga_read/entity/komga_result_entity.dart';
import 'package:komga_read/entity/komga_series_entity.dart';

JsonConvert jsonConvert = JsonConvert();

typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);

class JsonConvert {
  static final Map<String, JsonConvertFunction> convertFuncMap = {
    (KomgaLibraryEntity).toString(): KomgaLibraryEntity.fromJson,
    (KomgaMeEntity).toString(): KomgaMeEntity.fromJson,
    (KomgaResultEntity).toString(): KomgaResultEntity.fromJson,
    (KomgaResultPageable).toString(): KomgaResultPageable.fromJson,
    (KomgaResultPageableSort).toString(): KomgaResultPageableSort.fromJson,
    (KomgaResultSort).toString(): KomgaResultSort.fromJson,
    (KomgaSeriesEntity).toString(): KomgaSeriesEntity.fromJson,
    (KomgaSeriesMetadata).toString(): KomgaSeriesMetadata.fromJson,
    (KomgaSeriesBooksMetadata).toString(): KomgaSeriesBooksMetadata.fromJson,
  };

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value.map((dynamic e) => _asT<T>(e, enumConvert: enumConvert)).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>).map((dynamic e) => _asT<T>(e, enumConvert: enumConvert)!).toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value, {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        return convertFuncMap[type]!(Map<String, dynamic>.from(value)) as T;
      } else {
        throw UnimplementedError('$type unimplemented');
      }
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (<KomgaLibraryEntity>[] is M) {
      return data.map<KomgaLibraryEntity>((Map<String, dynamic> e) => KomgaLibraryEntity.fromJson(e)).toList() as M;
    }
    if (<KomgaMeEntity>[] is M) {
      return data.map<KomgaMeEntity>((Map<String, dynamic> e) => KomgaMeEntity.fromJson(e)).toList() as M;
    }
    if (<KomgaResultEntity>[] is M) {
      return data.map<KomgaResultEntity>((Map<String, dynamic> e) => KomgaResultEntity.fromJson(e)).toList() as M;
    }
    if (<KomgaResultPageable>[] is M) {
      return data.map<KomgaResultPageable>((Map<String, dynamic> e) => KomgaResultPageable.fromJson(e)).toList() as M;
    }
    if (<KomgaResultPageableSort>[] is M) {
      return data.map<KomgaResultPageableSort>((Map<String, dynamic> e) => KomgaResultPageableSort.fromJson(e)).toList()
          as M;
    }
    if (<KomgaResultSort>[] is M) {
      return data.map<KomgaResultSort>((Map<String, dynamic> e) => KomgaResultSort.fromJson(e)).toList() as M;
    }
    if (<KomgaSeriesEntity>[] is M) {
      return data.map<KomgaSeriesEntity>((Map<String, dynamic> e) => KomgaSeriesEntity.fromJson(e)).toList() as M;
    }
    if (<KomgaSeriesMetadata>[] is M) {
      return data.map<KomgaSeriesMetadata>((Map<String, dynamic> e) => KomgaSeriesMetadata.fromJson(e)).toList() as M;
    }
    if (<KomgaSeriesBooksMetadata>[] is M) {
      return data
          .map<KomgaSeriesBooksMetadata>((Map<String, dynamic> e) => KomgaSeriesBooksMetadata.fromJson(e))
          .toList() as M;
    }
    debugPrint("${M.toString()} not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is List) {
      return _getListChildType<M>(json.map((e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.convert<M>(json);
    }
  }
}
