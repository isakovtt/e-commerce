

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lafyuu/cache_helper.dart';

part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  LocalCubit() : super(LocalInitial());

  void getSavedLanguage() {
    final cachedLanguageCode = CacheHelper.getCachedLanguage();
    emit(ChangeLocalState(locale: Locale(cachedLanguageCode)));
  }

  Future<void> changeLanguage(String languageCode) async {
  await CacheHelper.cacheLanguage(languageCode);
  emit(ChangeLocalState(locale: Locale(languageCode)));
}
}

