import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());

  changeTheme({Brightness theme = Brightness.dark}) {
    theme == Brightness.light
        ? emit(LightTheme(theme: theme))
        : emit(DarkTheme(theme: theme));
  }
}
