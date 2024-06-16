import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/cubits/login/login_cubit.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../../global_widgets/global_input.dart';

class LoginInputEmail extends StatelessWidget {
  const LoginInputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return GlobalInput(
      validator: (value) {
        return cubit.validateEmail();
      },
      controller: cubit.emailController,
      obscureText: false,
      hintText: AppTexts.yourEmail,
      prefixIcon: const Icon(
        Icons.mail_outline_rounded,
        color: AppColors.neutralGrey,
      ),
    );
  }
}
