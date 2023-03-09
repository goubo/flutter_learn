import 'dart:math';

import 'package:dio/dio.dart';
import 'package:dio_logger/dio_logger.dart';

import 'config.dart';

class HttpUtil {
  static HttpUtil? _instance;

  factory HttpUtil() => _getInstance()!;

  static HttpUtil? get instance => _getInstance();

  static HttpUtil? _getInstance() {
    _instance ??= HttpUtil._internal();
    return _instance;
  }

  HttpUtil._internal()
      : _dio = Dio(BaseOptions(
          connectTimeout: httpTimeOut,
        )) {
    _dio.interceptors.add(dioLoggerInterceptor);
  }

  final Dio _dio;

  Dio getDio() => _dio;
}
