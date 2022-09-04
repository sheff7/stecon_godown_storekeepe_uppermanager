import 'package:dio/dio.dart';

import '../AppConstants/ApiConstants.dart';


class DioConfig {
  // Dio _dio=new Dio();
  static BaseOptions options = new BaseOptions(
    baseUrl:ApiConstants.BASE_URL,
    receiveDataWhenStatusError: true,
    connectTimeout: 60 * 1000, // 60 seconds
    receiveTimeout: 60 * 1000, // 60 seconds
  );
}