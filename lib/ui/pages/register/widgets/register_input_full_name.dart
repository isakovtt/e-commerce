import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/cubits/register/register_cubit.dart';

import '../../../../utils/ui_constants/app_colors.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../../global_widgets/global_input.dart';

class RegisterInputFullName extends StatelessWidget {
  const RegisterInputFullName({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(key: cubit.formKeyFullName,
      child: GlobalInput(validator: (p0) => cubit.validateFullName(),
        obscureText: false,
        controller: cubit.fullNameController,
        hintText: AppTexts.fullName,
        prefixIcon: const Icon(
          Icons.person_outline_rounded,
          color: AppColors.neutralGrey,
        ),
      ),
    );
  }
}
