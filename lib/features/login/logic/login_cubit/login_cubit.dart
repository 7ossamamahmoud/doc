import 'package:doc/core/networking/api_service.dart';
import 'package:doc/features/login/data/models/login_request_body.dart';
import 'package:doc/features/login/data/models/login_response_body.dart';
import 'package:doc/features/login/data/repos/login_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordValid = false;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponseBody) => emit(
        LoginState.success(loginResponseBody),
      ),
      failure: (error) => emit(
        LoginState.error(error: error.apiErrorModel.message ?? ""),
      ),
    );
  }
}
