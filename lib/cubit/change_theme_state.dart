import 'dart:ui';

class ChangeThemeState {}

final class ChangeThemeInitial extends ChangeThemeState {}

final class LightTheme extends ChangeThemeState {
  final Brightness theme;

  LightTheme({required this.theme});
}

final class DarkTheme extends ChangeThemeState {
  final Brightness theme;

  DarkTheme({required this.theme});
}
