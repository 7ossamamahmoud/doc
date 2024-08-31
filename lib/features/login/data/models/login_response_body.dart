import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';

@JsonSerializable()
class LoginResponseBody {
  final String? message;
  final int? code;
  final bool? status;
  @JsonKey(name: 'data')
  final UserData? userData;


  LoginResponseBody({this.message, this.code, this.status, this.userData});

  factory LoginResponseBody.fromJson(Map<String, dynamic> json) => _$LoginResponseBodyFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'username')
  final String? userName;
  final String? token;


  UserData({this.userName, this.token});

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}