import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService({required String baseUrl})
      : _dio = Dio(BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(milliseconds: 5000),
          receiveTimeout: const Duration(milliseconds: 3000),
          headers: {
            'Content-Type': 'application/json',
          },
        ));

  // GET Request
  Future<Response> get(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    return await _dio.get(endpoint, queryParameters: queryParams);
  }

  // POST Request
  Future<Response> post(String endpoint, Map<String, dynamic> data) async {
    return await _dio.post(endpoint, data: data);
  }

  // PUT Request
  Future<Response> put(String endpoint, Map<String, dynamic> data) async {
    return await _dio.put(endpoint, data: data);
  }

  // DELETE Request
  Future<Response> delete(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    return await _dio.delete(endpoint, queryParameters: queryParams);
  }
}
