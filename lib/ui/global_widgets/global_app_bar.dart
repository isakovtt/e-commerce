import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lafyuu/data/models/login_response.dart';
import 'package:lafyuu/ui/pages/login/login_form_page.dart';

import '../../cubits/login/login_cubit.dart';
import '../../utils/ui_constants/app_colors.dart';
import 'global_input.dart';

class GlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  const GlobalAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 313,
      toolbarHeight: 78,
      elevation: 2,
      backgroundColor: AppColors.backgroundWhite,
      centerTitle: true,
      leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: GlobalInput(
              hintText: 'Search',
              prefixIcon:
                  Icon(Icons.search, size: 24, color: AppColors.primaryBlue),
            ),
          )),
      actions: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            Icons.favorite_border_rounded,
            color: AppColors.neutralGrey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            onTap: () {
              Hive.box<LoginResponse>('login').clear();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider<LoginCubit>(
                      create: (context) => LoginCubit(),
                      child: const LoginFormPage(),
                    ),
                  ));
            },
            child: const Icon(
              Icons.notifications_none_rounded,
              color: AppColors.neutralGrey,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(78);
}
