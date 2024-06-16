import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lafyuu/cache_helper.dart';

import 'app.dart';
import 'data/models/login_response.dart';
import 'utils/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();

  await Hive.initFlutter();
  Hive.registerAdapter(LoginResponseAdapter());

  await Hive.openBox<LoginResponse>('login');

//  await Hive.openBox<List>('productsBox');

  setupServiceLocator();
  runApp(const MyApp());
}
