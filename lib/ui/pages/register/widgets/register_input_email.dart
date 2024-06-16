import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../../global_widgets/global_input.dart';

class RegisterInputEmail extends StatelessWidget {
  const RegisterInputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Form(key: cubit.formKeyEmail,
      child: GlobalInput( validator: (value) {
        return cubit.validateEmail();
      },
        controller: cubit.emailController,
        obscureText: false,
        hintText: AppTexts.yourEmail,
        prefixIcon: const Icon(
          Icons.mail_outline_rounded,
          color: AppColors.neutralGrey,
        ),
      ),
    );
  }
}
