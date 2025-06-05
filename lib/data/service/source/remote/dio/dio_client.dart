import 'package:dio/dio.dart';
import 'package:rick_and_morty/data/service/source/remote/dio/dio_interceptor.dart';

class DioClient {
  final DioInterceptor dioInterceptor;
  late final Dio dio;

  DioClient(this.dioInterceptor) {
    dio.interceptors.add(dioInterceptor);
  }
}