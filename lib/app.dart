import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app_localization.dart';
import 'cubits/local/local_cubit.dart';
import 'ui/pages/splash/splash_screen_page.dart';
import 'utils/ui_constants/app_texts.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LocalCubit()..changeLanguage('en'),
      child: BlocBuilder<LocalCubit, LocalState>(
        builder: (context, state) {
          if (state is ChangeLocalState) {
            return MaterialApp(
                locale: state.locale,
                localizationsDelegates: [
                  AppLocalizations.delegate,
                  DefaultMaterialLocalizations.delegate,
                  DefaultMaterialLocalizations.delegate,
                  DefaultWidgetsLocalizations.delegate,
                  DefaultCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', 'US'),
                  Locale('az', 'AZ'),
                ],
                // localeResolutionCallback: (currentLocal, supportedLocales) {
                //   for (var locale in supportedLocales) {
                //     if (currentLocal != null &&
                //         currentLocal.languageCode == locale.languageCode) {
                //       return currentLocal;
                //     }
                //   }
                //   return supportedLocales.first;
                // },
                debugShowCheckedModeBanner: false,
                title: AppTexts.lafyuuEcommerce,
                home: const SplashScreen());
          }
          return const Text('err');
        },
      ),
    );
  }
}
