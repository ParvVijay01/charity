import 'package:charity/core/api/api_config.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiClient {
  Dio getDio() {
    Dio dio = Dio();

    dio.options.baseUrl = '${ApiConfig.BASE_URL}api/';

    dio.interceptors.add(PrettyDioLogger(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      compact: false,
    ));

    return dio;
  }
}
