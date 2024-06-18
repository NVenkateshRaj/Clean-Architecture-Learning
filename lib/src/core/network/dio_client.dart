import 'package:clean_architecture/src/core/constants/app_constants.dart';
import 'package:dio/dio.dart';

class DioClient{
  late final Dio _dio;
  DioClient() {
    _dio = Dio();
    _dio
      ..options.baseUrl = AppConstants.baseUrl
      ..options.headers = {}
      ..options.connectTimeout = const Duration(milliseconds: 15000)
      ..options.receiveTimeout = const Duration(milliseconds: 15000)
      ..options.responseType = ResponseType.json;
  }


  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? queryParameters,
    Options? options, CancelToken? cancelToken, ProgressCallback? onReceiveProgress,}) async {
    try {
      final response = await _dio.get(
        url,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> post(String uri, {data, Map<String, dynamic>? queryParameters,
    Options? options}) async {
    try {
      final response = await _dio.post(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> put(String uri, {data, Map<String, dynamic>? queryParameters,
    Options? options, CancelToken? cancelToken}) async {
    try {
      final response = await _dio.put(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<Response<dynamic>> patch(String uri, {data, Map<String, dynamic>? queryParameters,
    Options? options,}) async {
    try {
      final response = await _dio.patch(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }

  Future<dynamic> delete(String uri, {data, Map<String, dynamic>? queryParameters, Options? options,}) async {
    try {
      final response = await _dio.delete(
        uri,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response;
    } on DioException {
      rethrow;
    }
  }
}