import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://www.goldapi.io/api/', 
    ));
  }

  static Future<Response> getData(String url) {
    dio!.options.headers = {'x-access-token': 'goldapi-7lerleydfw65-io'};
    return dio!.get(url);
  }
}
