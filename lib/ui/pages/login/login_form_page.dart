import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../cubits/login/login_cubit.dart';
import '../../../utils/ui_constants/sized_boxes.dart';
import '../../global_widgets/global_divider.dart';
import '../../global_widgets/sosial_media_button.dart';
import '../register/widgets/title_items.dart';
import 'widgets/go_forgot_password.dart';
import 'widgets/go_register.dart';
import 'widgets/login_input_email.dart';
import 'widgets/login_input_password.dart';
import 'widgets/sign_in_button.dart';

class LoginFormPage extends StatelessWidget {
  const LoginFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return  Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SingleChildScrollView(
          child: Form(key: cubit.formKey,
            child:  const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleItems.titleLogin(),
                SizedBoxes.h28,
                LoginInputEmail(),
                SizedBoxes.h8,
                LoginInputPassword(),
                SizedBoxes.h16,
                SignInButton(),
                SizedBoxes.h31,
                GlobalDivider(),
                SizedBoxes.h16,
                SosialMediaButton.google(),
                SizedBoxes.h8,
                SosialMediaButton.facebook(),
                SizedBoxes.h16,
                GoForgotPassword(),
                SizedBoxes.h8,
                GoRegister(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
