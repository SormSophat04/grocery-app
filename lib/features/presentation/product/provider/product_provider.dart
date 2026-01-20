import 'package:dio/src/response.dart';
import 'package:get/get.dart' hide Response;
import 'package:groceries_app/core/api/api_client.dart';
import 'package:groceries_app/core/api/api_endpoint.dart';

class ProductProvider {
  final ApiClient _apiClient = Get.find();

  Future<Response> fetchProducts() {
    return _apiClient.dio.get(ApiEndpoint.products);
  }
}