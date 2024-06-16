import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lafyuu/cubits/home/home_cubit.dart';
import 'package:lafyuu/cubits/products/products_cubit.dart';
import 'package:lafyuu/ui/pages/home/home_page.dart';

import '../../../cubits/login/login_cubit.dart';
import '../../../data/models/login_response.dart';
import '../../global_widgets/global_logo.dart';
import '../../../utils/ui_constants/app_colors.dart';
import '../login/login_form_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

final box = Hive.box<LoginResponse>('login');

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (BuildContext context) {
            return BlocProvider(
                create: (context) {
                  return LoginCubit();
                },
                child: box.isEmpty
                    ? const LoginFormPage()
                    : MultiBlocProvider(
                        providers: [
                          BlocProvider(
                            create: (context) => ProductsCubit()..getProducts(),
                          ),
                          BlocProvider(
                            create: (context) =>
                                HomeCubit()..getProductsDatas(),
                          ),
                        ],
                        child: const HomePage(),
                      ));
          },
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: Center(
        child: GlobalLogo.white(),
      ),
    );
  }
}
