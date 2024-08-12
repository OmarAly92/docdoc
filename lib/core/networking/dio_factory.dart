import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/end_points.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class.
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    const timeout = Duration(seconds: 30);
    _addDioInterceptor();
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeout
        ..options.receiveTimeout = timeout
        ..options.baseUrl = EndPoints.baseUrl;
      _addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void _addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
