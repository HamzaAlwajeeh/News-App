// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:news_app/cubit/change_theme_cubit.dart';
import 'package:news_app/cubit/change_theme_state.dart';
import 'package:news_app/cubit/cubit/change_language_cubit.dart';
import 'package:news_app/cubit/cubit/change_language_state.dart';
import 'package:news_app/generated/l10n.dart';
import 'package:news_app/views/home_view.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  // ignore: use_super_parameters
  const NewsApp({Key? key}) : super(key: key);

  static const route = '/news-app';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ChangeThemeCubit()),
        BlocProvider(create: (context) => ChangeLanguageCubit()),
      ],
      child: Builder(
        builder:
            (context) => BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
              builder: (context, themState) {
                return BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
                  builder: (context, languageState) {
                    return MaterialApp(
                      locale:
                          languageState is ArabicLanguage
                              ? const Locale('ar')
                              : const Locale('en'),
                      localizationsDelegates: [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: S.delegate.supportedLocales,
                      debugShowCheckedModeBanner: false,
                      title: 'News App',
                      theme: ThemeData(
                        fontFamily: 'Poppins',
                        brightness:
                            themState is LightTheme
                                ? Brightness.light
                                : Brightness.dark,
                      ),
                      home: HomeView(),
                    );
                  },
                );
              },
            ),
      ),
    );
  }
}
