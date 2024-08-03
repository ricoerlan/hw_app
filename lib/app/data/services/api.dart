import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class Api {
  Dio? _dio;

  Dio get dio {
    if (_dio != null) {
      return _dio!;
    } else {
      var dio = Dio(
        BaseOptions(
            headers: {"Accept": "application/json"},
            baseUrl: dotenv.env['BASE_URL'].toString(),
            receiveTimeout: const Duration(seconds: 45),
            connectTimeout: const Duration(seconds: 250),
            sendTimeout: const Duration(seconds: 45)),
      );
      if (kDebugMode) {
        dio.interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          compact: false,
        ));
      }
      return dio;
    }
  }

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;
}
