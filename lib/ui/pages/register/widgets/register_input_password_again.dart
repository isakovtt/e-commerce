import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../../global_widgets/global_input.dart';

class RegisterInputPasswordAgain extends StatelessWidget {
  const RegisterInputPasswordAgain({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return Form(key: cubit.formKeyPasswordAgain,
      child: GlobalInput(validator: (p0) => cubit.validatePasswordAgain(),
        controller: cubit.passwordAgainController,
        obscureText: true,
        hintText: AppTexts.passwordAgain,
        prefixIcon: const Icon(
          Icons.lock_outline_rounded,
          color: AppColors.neutralGrey,
        ),
      ),
    );
  }
}
