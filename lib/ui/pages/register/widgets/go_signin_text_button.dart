import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/ui_constants/app_texts.dart';
import '../../../../utils/ui_constants/sized_boxes.dart';
import '../../../../utils/ui_constants/text_styles.dart';
import '../../../../cubits/login/login_cubit.dart';
import '../../login/login_form_page.dart';

class GoSignInTextButton extends StatelessWidget {
  const GoSignInTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppTexts.haveAccount, style: TextStyles.neutralGreyStyleSize18),
        SizedBoxes.w4,
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => BlocProvider<LoginCubit>(
                    create: (context) => LoginCubit(),
                    child: const LoginFormPage(),
                  ),
                ));
          },
          child: Text(
            AppTexts.signIn,
            style: TextStyles.primaryBlueBoldStyleSize22,
          ),
        ),
      ],
    );
  }
}
