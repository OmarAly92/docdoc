import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_request_body.g.dart';

@JsonSerializable()
class LoginRequestBody extends Equatable {
  final String email;
  final String password;

  const LoginRequestBody({
    required this.email,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginRequestBodyToJson(this);

  @override
  List<Object> get props => [email, password];
}
