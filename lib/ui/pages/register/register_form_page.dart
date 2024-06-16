import 'package:flutter/material.dart';

import '../../../utils/ui_constants/sized_boxes.dart';
import 'widgets/go_signin_text_button.dart';
import 'widgets/register_input_email.dart';
import 'widgets/register_input_full_name.dart';
import 'widgets/register_input_password.dart';
import 'widgets/register_input_password_again.dart';
import 'widgets/sign_up_button.dart';
import 'widgets/title_items.dart';

class RegisterFormPage extends StatelessWidget {
  const RegisterFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleItems.titleRegister(),
                SizedBoxes.h28,
                RegisterInputFullName(),
                SizedBoxes.h8,
                RegisterInputEmail(),
                SizedBoxes.h8,
                RegisterInputPassword(),
                SizedBoxes.h8,
                RegisterInputPasswordAgain(),
                SizedBoxes.h16,
                SignUpButton(),
                SizedBoxes.h28,
                GoSignInTextButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
