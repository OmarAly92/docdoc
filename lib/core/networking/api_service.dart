import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/end_points.dart';
import 'package:docdoc/feature/auth/data/model/login_request_body.dart';
import 'package:docdoc/feature/auth/data/model/login_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(EndPoints.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
}
