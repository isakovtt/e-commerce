import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/cubits/register/register_cubit.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../../global_widgets/global_input.dart';

class RegisterInputPassword extends StatelessWidget {
  const RegisterInputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Form(
      key: cubit.formKeyPassword,
      child: GlobalInput(
        validator: (p0) => cubit.validatePassword(),
        controller: cubit.passwordController,
        obscureText: true,
        hintText: AppTexts.password,
        prefixIcon: const Icon(
          Icons.lock_outline_rounded,
          color: AppColors.neutralGrey,
        ),
      ),
    );
  }
}
