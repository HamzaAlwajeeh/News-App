import 'package:flutter/material.dart';
import 'package:news_app/constants/constants.dart';
import 'package:news_app/widgets/Custom_app_bar.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/custom_droawer.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: CustomDroawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoriesListView()),
            SliverToBoxAdapter(child: SizedBox(height: 25)),
            NewsListViewBuilder(category: kGeneralNews),
          ],
        ),
      ),
    );
  }
}
