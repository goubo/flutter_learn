import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:komga_read/entity/komga_library_entity.dart';
import 'package:komga_read/entity/komga_me_entity.dart';
import 'package:komga_read/entity/komga_result_entity.dart';
import 'package:komga_read/utils/http_client.dart';
import 'package:komga_read/utils/ps.dart';
import 'package:logger/logger.dart';

import '../entity/komga_series_parameters_entity.dart';
import 'config.dart';

class KomgaApi {
  var logger = Logger();
  static final KomgaApi _instance = KomgaApi._internal();

  factory KomgaApi() => _instance;

  static KomgaApi get instance => KomgaApi._internal();

  KomgaApi._internal();

  Future<dynamic> _query(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    if (Global.cookie != null) {
      options ??= Options();
      options.headers ??= {};
      options.headers?["Cookie"] = Global.cookie;
    } else if (await PersistentStorage().hasKey("komga_user") && await PersistentStorage().hasKey("komga_pwd")) {
      options ??= Options();
      options.headers ??= {};
      var login = await PersistentStorage().getStorage("komga_user");
      var password = await PersistentStorage().getStorage("komga_pwd");
      String credentials = "$login:$password";
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      String encoded = stringToBase64.encode(credentials);
      options.headers!["Authorization"] = "Basic $encoded";
    }
    if (path.startsWith("/")) {
      path = "${await PersistentStorage().getStorage("komga_address")}$path";
    }
    var response = await HttpUtil.instance!.getDio().request(path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
        options: options,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress);
    if (response.headers['set-cookie'] != null) {
      Global.cookie = response.headers['set-cookie']?.first.split(";")[0];
    }
    return response;
  }

  /// 登录
  Future<KomgaMeEntity> login(String baseUrl, String login, String password) async {
    String credentials = "$login:$password";
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    String encoded = stringToBase64.encode(credentials);
    var r = await _query("$baseUrl/api/v2/users/me",
        options: Options(method: "GET", headers: {"Authorization": "Basic $encoded"}));
    var komgaMe = KomgaMeEntity.fromJson(r.data);
    return komgaMe;
  }

  ///获取书库
  Future<List<KomgaLibraryEntity>> getLibrary() async {
    var r = await _query("/api/v1/libraries");
    return (r.data as List<dynamic>).map((e) => KomgaLibraryEntity.fromJson((e as Map<String, dynamic>))).toList();
  }

  ///获取系列
  Future<KomgaResultEntity> getSeries(KomgaSeriesParametersEntity komgaSeriesParametersEntity) async {
    var r = await _query("/api/v1/series", queryParameters: komgaSeriesParametersEntity.toJson());
    return KomgaResultEntity.fromJson(r.data);
  }

  ///获取系列图片地址
  Future<String> getSeriesThumbnail(String type, String id) async {
    return "${await PersistentStorage().getStorage("komga_address")}/api/v1/$type/$id/thumbnail";
  }

  /// 获取books
  Future<KomgaResultEntity> getBooks(KomgaSeriesParametersEntity komgaSeriesParametersEntity) async {
    var r = await _query("/api/v1/series/${komgaSeriesParametersEntity.seriesId}/books",
        queryParameters: komgaSeriesParametersEntity.toJson());
    return KomgaResultEntity.fromJson(r.data);
  }
}
