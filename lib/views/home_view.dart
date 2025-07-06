import 'package:flutter/material.dart';
import 'package:news_app/widgets/Custom_app_bar.dart';
import 'package:news_app/widgets/categories_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: customAppBar(), body: CategoriesListView());
  }
}
