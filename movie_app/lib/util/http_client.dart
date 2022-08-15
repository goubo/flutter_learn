import 'package:dio/dio.dart';
import 'config.dart';

class HttpRequest {
  final Dio dio;

  HttpRequest._internal()
      : dio = Dio(BaseOptions(
          baseUrl: httpBaseUrl,
          connectTimeout: httpTimeOut,
        ));

  factory HttpRequest() => _instance;

  static late final HttpRequest _instance = HttpRequest._internal();

  Future<Response> request(
    String uri, {
    String method = "get",
    Map<String, dynamic>? queryParameters,
  }) {
    return dio.request(uri,
        queryParameters: queryParameters, options: Options(method: method));
  }
}
