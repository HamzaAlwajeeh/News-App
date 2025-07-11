import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit/change_language_state.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  ChangeLanguageCubit() : super(ChangeLanguageInitial());

  changeLanguage({required Locale language}) {
    language == Locale('ar')
        ? emit(ArabicLanguage())
        : emit(ChangeLanguageInitial());
  }
}
