import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'config.dart';

class HttpRequest {
  var logger = Logger();
  Dio _dio;

  static final HttpRequest _instance = HttpRequest._internal();

  factory HttpRequest() => _instance;

  static HttpRequest get instance => HttpRequest._internal();

  HttpRequest._internal()
      : _dio = Dio(BaseOptions(
          connectTimeout: httpTimeOut,
        ));

  Dio getDio() => _dio;
}
