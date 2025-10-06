import 'package:chef_app/core/bloc/cubit/global_state.dart';
import 'package:chef_app/core/database/cache/cache_helper.dart';
import 'package:chef_app/core/services/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  // bool isArabic = false;
  String langCode = 'en';

  void changeLang(String code) {
    emit(ChangeLangLoading());
    // isArabic = !isArabic;
    langCode = code;
    sl<CacheHelper>().cacheLanguage(code);
    emit(ChangeLangSuccess());
  }

  void getLang() {
    emit(ChangeLangLoading()); 
    String? code = sl<CacheHelper>().getCachedLanguage();
    langCode = code;
    emit(ChangeLangSuccess());
  }
}
