import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../cubits/login/login_cubit.dart';
import '../../../global_widgets/global_input.dart';

class LoginInputPassword extends StatelessWidget {
  const LoginInputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return GlobalInput(
      validator: (value) {
        return cubit.validatePassword();
      },
      controller: cubit.passwordController,
      obscureText: true,
      hintText: AppTexts.password,
      prefixIcon: const Icon(
        Icons.lock_outline_rounded,
        color: AppColors.neutralGrey,
      ),
    );
  }
}
