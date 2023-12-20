import 'package:flutter/foundation.dart';
import 'package:giphy_app/core/config/environment.dart';
import 'package:giphy_app/core/domain/managers/http_manager.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpDataManager implements HttpManager {
  HttpDataManager() {
    _dio = Dio(
      BaseOptions(
          baseUrl: Environment.baseUrl,
          contentType: 'application/json; charset=UTF-8',
          receiveTimeout: const Duration(seconds: 30),
          sendTimeout: const Duration(seconds: 30),
          queryParameters: {
            'api_key': Environment.giphyApiKey,
          }),
    );

    if (!kReleaseMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
        ),
      );
    }
  }

  late Dio _dio;

  @override
  Future<HttpResponse> get(
    String url, {
    Map<String, dynamic>? queryParams,
  }) async =>
      await _dio
          .get(
            url,
            queryParameters: queryParams,
          )
          .then(
            (response) => HttpResponse(
              statusCode: response.statusCode ?? 0,
              data: response.data,
            ),
          );

  @override
  Future<HttpResponse> post(
    String url, {
    Map<String, dynamic>? requestBody,
    Map<String, dynamic>? queryParams,
  }) async =>
      await _dio
          .post(
            url,
            queryParameters: queryParams,
            data: requestBody,
          )
          .then(
            (response) => HttpResponse(
              statusCode: response.statusCode ?? 0,
              data: response.data,
            ),
          );
}
