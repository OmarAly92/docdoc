import 'package:bloc/bloc.dart';
import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_error_model.dart';
import 'package:docdoc/feature/auth/data/model/login_request_body.dart';
import 'package:docdoc/feature/auth/data/repository/login_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._repository) : super(const LoginState.initial());

  final LoginRepository _repository;

  Future<void> emitLoginState(LoginRequestBody params) async {
    emit(const LoginState.loading());
    final result = await _repository.login(params);
    result.when(
      success: (data) => emit(LoginState.success(data)),
      failure: (error) => emit(LoginState.failure(failure: error)),
    );
  }
}
