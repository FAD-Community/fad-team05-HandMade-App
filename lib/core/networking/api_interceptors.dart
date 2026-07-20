import 'dart:developer';

import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('''
================ REQUEST ================
  URI: ${options.uri}
  METHOD: ${options.method}
  HEADERS: ${options.headers}
  BODY: ${options.data}
  QUERY: ${options.queryParameters}
=========================================
''');

    options.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    });

    /// لو عندك Token
    // final token = CacheHelper.getData(key: AppStrings.token);
    // if (token != null) {
    //   options.headers['Authorization'] = 'Bearer $token';
    // }

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('''
================ RESPONSE ================
STATUS: ${response.statusCode}
URI: ${response.requestOptions.uri}
DATA: ${response.data}
==========================================
''');

    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log('''
================ ERROR ===================
STATUS: ${err.response?.statusCode}
MESSAGE: ${err.message}
URI: ${err.requestOptions.uri}
DATA: ${err.response?.data}
==========================================
''');

    super.onError(err, handler);
  }
}
