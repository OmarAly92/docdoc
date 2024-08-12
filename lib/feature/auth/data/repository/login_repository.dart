import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/core/networking/api_service.dart';
import 'package:docdoc/feature/auth/data/model/login_request_body.dart';
import 'package:docdoc/feature/auth/data/model/login_response.dart';

class LoginRepository {
  final ApiService _apiService;

  LoginRepository(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody params) async {
    try {
      final user = await _apiService.login(params);
      return ApiResult.success(user);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error).apiErrorModel);
    }
  }
}
