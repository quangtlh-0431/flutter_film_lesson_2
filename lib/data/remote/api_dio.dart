import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../foundation/constants.dart';

final dioProvider = Provider((_) => AppDio.getInstance());

class AppDio with DioMixin implements Dio {
  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: Constants.endpoint,
      contentType: 'application/json',
      connectTimeout: const Duration(seconds: 300),
      sendTimeout: const Duration(seconds: 300),
      receiveTimeout: const Duration(seconds: 300),
    );

    this.options = options;
    interceptors.add(LogInterceptor(responseBody: false, requestBody: false));

    httpClientAdapter = HttpClientAdapter();
  }

  static Dio getInstance() => AppDio._();
}