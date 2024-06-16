import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../data/models/login_response.dart';
import '../../data/services/login_service.dart';
import '../../utils/service_locator.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final LoginService loginService = getIt.get<LoginService>();
  final GlobalKey<FormState> formKey = GlobalKey();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final List<LoginResponse> loginList = [];
  final box = Hive.box<LoginResponse>('login');

  void login() async {
    try {
      emit(LoginLoading());
      final loginData = box.get('login');
      log('$loginData');
      final LoginResponse? response = await loginService.login(
          email: emailController.text, password: passwordController.text);

      if (response is LoginResponse) {
        emit(LoginSuccess());
        box.put('login', response);
      } else {
        emit(LoginError());
      }
    } catch (e) {
      emit(LoginError());
    }
  }

  Future<void> validateLogin() async {
    if (formKey.currentState?.validate() ?? false) {
      login();
    }
  }

  String? validatePassword() {
    if (passwordController.text.isEmpty) {
      return 'Password is required';
    } else if (passwordController.text.length < 3) {
      return 'Password must be at least 3 characters';
    }
    return null;
  }

  String? validateEmail() {
    if (emailController.text.isEmpty) {
      return 'Email is required';
    } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(emailController.text)) {
      return 'Please enter a valid email';
    }
    return null;
  }
}
