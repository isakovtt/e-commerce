import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cubits/products/products_cubit.dart';
import '../../../../cubits/register/register_cubit.dart';
import '../../../global_widgets/global_button.dart';
import '../../../../utils/ui_constants/app_texts.dart';
import '../../home/home_page.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return BlocProvider<ProductsCubit>(
                create: (context) => ProductsCubit()..getProducts(),
                child: const HomePage(),
              );
            },
          ));
        }
      },
      builder: (context, state) {
        return GlobalButton(
          text: AppTexts.signUp,
          isLoading: state is RegisterLoading,
          onTap: () => cubit.validateRegister(),
        );
      },
    );
  }
}
