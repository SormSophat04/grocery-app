import 'package:dio/dio.dart';
import 'package:groceries_app/core/api/api_endpoint.dart';

class ApiClient {
  late Dio dio;
  ApiClient() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiEndpoint.baseUrl,
        connectTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
  }
}
