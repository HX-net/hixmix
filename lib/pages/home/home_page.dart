import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/core/theme/app_text_style.dart';
import 'package:hixmix/pages/genres_and_moods/moods_page.dart';
import 'package:hixmix/pages/overview/overview_page.dart';
import 'package:hixmix/pages/podcasts/podcasts_page.dart';
import 'package:hixmix/pages/recommendations/recommendations_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<StatefulWidget> {
  int selectedIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      OverviewPage(),
      MoodsPage(),
      PodcastsPage(),
      RecommendationsPage(),
    ];
  }

  void _changePage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: size.height / 4,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentGeometry.topCenter,
                  end: AlignmentGeometry.bottomCenter,
                  colors: AppGradiant.bgGradiant,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text("Home", style: AppTextStyles.hero),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                          child: _AppBarWidget("OVERVIEW", 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: _AppBarWidget("GENRES & MOODS", 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: _AppBarWidget("PODCASTS", 2),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                          child: _AppBarWidget("RECOMMENDATIONS", 3),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Expanded(child: pages[selectedIndex])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _AppBarWidget(String label, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        _changePage(index);
        print(label);
      },
      child: Center(
        child: Column(
          children: [
            Text(label, style: AppTextStyles.appBar),

            Container(
              height: 2,
              width: 50,
              decoration: isSelected
                  ? BoxDecoration(
                      gradient: LinearGradient(
                        colors: AppGradiant.selectedIconColor,
                      ),
                    )
                  : BoxDecoration(),
            ),
          ],
        ),
      ),
    );
  }
}
