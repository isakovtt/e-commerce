import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/cubits/home/home_cubit.dart';

import '../../../../cubits/login/login_cubit.dart';
import '../../../../cubits/products/products_cubit.dart';
import '../../../global_widgets/global_button.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../home/home_page.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider<ProductsCubit>(
                    create: (context) => ProductsCubit()..getProducts(),
                  ),
                  BlocProvider<HomeCubit>(
                    create: (context) => HomeCubit()..getProductsDatas(),
                  ),
                ],
                child: const HomePage(),
              );
            },
          ));
        } else if (state is LoginError) {
          const snackBar = SnackBar(
            content: Text('Email and Password is wrong'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return GlobalButton(
          isLoading: state is LoginLoading,
          onTap: () {
            cubit.validateLogin();
          },
          text: AppTexts.signIn,
        );
      },
    );
  }
}
