import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/register_response.dart';
import '../../data/services/register_service.dart';
import '../../utils/service_locator.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  late final fullNameController = TextEditingController();
  late final emailController = TextEditingController();
  late final passwordController = TextEditingController();
  late final passwordAgainController = TextEditingController();
  final GlobalKey<FormState> formKeyPassword = GlobalKey();
  final GlobalKey<FormState> formKeyPasswordAgain = GlobalKey();
  final GlobalKey<FormState> formKeyFullName = GlobalKey();
  final GlobalKey<FormState> formKeyEmail = GlobalKey();

  final RegisterService _registerService = getIt.get<RegisterService>();

  void _register() async {
    try {
      emit(RegisterLoading());
      final RegisterResponse? response = await _registerService.register(
          fullName: fullNameController.text,
          email: emailController.text,
          password: passwordController.text);
      if (response is RegisterResponse) {
        emit(RegisterSuccess());
      } else {
        emit(RegisterError());
      }
    } on SocketException catch (_) {
      emit(RegisterNetworkError());
    } catch (e) {
      emit(RegisterError());
    }
  }

  void checkAndRegister() {
    if (passwordController.text == passwordAgainController.text) {
      _register();
    } else {
    log('message');
    }
  }

  @override
  Future<void> close() async {
    fullNameController.dispose();
    emailController.dispose();
    passwordAgainController.dispose();
    passwordController.dispose();
    return super.close();
  }

  Future<void> validateRegister() async {
    if (formKeyFullName.currentState != null &&
        formKeyFullName.currentState!.validate() &&
        formKeyEmail.currentState != null &&
        formKeyEmail.currentState!.validate() &&
        formKeyPassword.currentState != null &&
        formKeyPassword.currentState!.validate() &&
        formKeyPasswordAgain.currentState != null &&
        formKeyPasswordAgain.currentState!.validate()) {
      checkAndRegister();
    }
  }

  String? validateFullName() {
    if (fullNameController.text.isEmpty) {
      return 'Full name is required';
    }
    return null;
  }

  String? validatePassword() {
    if (passwordController.text.isEmpty) {
      return 'Password is required';
    } else if (passwordController.text.length < 3) {
      return 'Password must be at least 3 characters';
    }
    return null;
  }

  String? validatePasswordAgain() {
    if (passwordAgainController.text.isEmpty) {
      return 'Password is required';
    } else if (passwordAgainController.text.length < 3) {
      return 'Password must be at least 3 characters';
    } else if (passwordAgainController.text != passwordController.text) {
      return 'Password is not equals Password again';
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
