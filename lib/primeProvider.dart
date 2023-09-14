import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'http://192.168.225.63:3000',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  // final _baseUrl = 'http://192.168.225.63:3000';

}
