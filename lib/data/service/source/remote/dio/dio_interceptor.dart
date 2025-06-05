import 'package:dio/dio.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('[REQ] ${options.method} => ${options.uri}');
    options.headers['Content-Type'] = 'application/json';
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('[RES] => ${response.statusCode} ${response.data}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('[ERR] => ${err.message}');
    handler.next(err);
  }
}