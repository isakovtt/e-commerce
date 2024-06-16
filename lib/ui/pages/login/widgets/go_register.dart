import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../utils/ui_constants/text_styles.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../register/register_form_page.dart';

class GoRegister extends StatelessWidget {
  const GoRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        AppTexts.dontHaveAccount,
        style: TextStyles.neutralGreyStyleSize18,
      ),
      SizedBoxes.w4,
      TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider<RegisterCubit>(
                    create: (context) => RegisterCubit(),
                    child: const RegisterFormPage(),
                  ),
                ));
          },
          child: Text(
            AppTexts.register,
            style: TextStyles.primaryBlueBoldStyleSize22,
          )),
    ]);
  }
}
