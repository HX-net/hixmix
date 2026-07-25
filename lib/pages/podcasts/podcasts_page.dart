import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/core/theme/app_text_style.dart';
import 'package:hixmix/gen/assets.gen.dart';

class PodcastsPage extends StatelessWidget {
  const PodcastsPage({super.key});

  List<Widget> get podcastCategoriesCardList => [
    _podcastCategoryCard(image: Assets.images.podcast.category.arts.provider()),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.business.provider(),
    ),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.cOMEDYPodcast.provider(),
    ),
    _podcastCategoryCard(image: Assets.images.podcast.category.edu.provider()),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.games.provider(),
    ),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.kidsFamily.provider(),
    ),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.lifestyle.provider(),
    ),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.music.provider(),
    ),
    _podcastCategoryCard(image: Assets.images.podcast.category.news.provider()),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.sports.provider(),
    ),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.stories.provider(),
    ),
    _podcastCategoryCard(
      image: Assets.images.podcast.category.top50.provider(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(10, 10, 0, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Popular in these week",
                      style: AppTextStyles.sectionTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _hotPodcastCard(
                      image: Assets.images.podcast.image549.provider(),
                      label: "Simple Pleasures",
                      description: "Yotam Ottolenghi",
                    ),
                    _hotPodcastCard(
                      image: Assets.images.podcast.image550.provider(),
                      label: "David Tennant Do...",
                      description: "David Tennant",
                    ),
                    _hotPodcastCard(
                      image: Assets.images.podcast.image551.provider(),
                      label: "Stuff you Should...",
                      description: "Iheartradio & Howstuff...",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        Text(
                          "Featured episodes",
                          style: AppTextStyles.sectionTitle,
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Row(
                        children: [
                          Text("View All", style: AppTextStyles.moreTitle),
                          SizedBox(width: 5),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: AppColors.secondaryTextColor,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _podcastCard(
                image: Assets.images.podcast.weAreLosingOurJobs.provider(),
                title: "We're Losing Our Jobs? - #212",
                publisher: "Dude Soup",
              ),
              SizedBox(height: 10),
              _podcastCard(
                image: Assets.images.podcast.theyTakenHer.provider(),
                title: "1 - They've Taken Her",
                publisher: "Maddie",
              ),
              SizedBox(height: 10),
              _podcastCard(
                image: Assets.images.podcast.kristenBell.provider(),
                title: "Kristen Bell",
                publisher: "Conan O'Brien Needs a Friend",
              ),
              SizedBox(height: 10),
              _podcastCard(
                image: Assets.images.podcast.a1REALISING.provider(),
                title: "1 - REALISING",
                publisher: "NB",
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.center,
                child: Text("Categories", style: AppTextStyles.sectionTitle),
              ),
              SizedBox(height: 30),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                },
                children: [
                  for (int i = 0 ; i < podcastCategoriesCardList.length;i += 2)
                    TableRow(
                      children: podcastCategoriesCardList.sublist(
                        i,
                        (i + 2).clamp(0, podcastCategoriesCardList.length),
                      )
                    ) 

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _hotPodcastCard({
    required ImageProvider image,
    required String label,
    required String description,
  }) {
    return Container(
      margin: EdgeInsetsGeometry.only(left: 20),
      width: 150,
      child: Column(
        children: [
          Image(image: image, width: 150, height: 150),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Align(
              alignment: AlignmentGeometry.centerLeft,
              child: Text(label, style: AppTextStyles.itemTitle),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.centerLeft,
            child: Text(description, style: AppTextStyles.itemDescriptions),
          ),
        ],
      ),
    );
  }

  Widget _podcastCard({
    required ImageProvider image,
    required String title,
    required String publisher,
  }) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: Image(image: image),
        ),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(title, style: AppTextStyles.itemTitle),
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Text(publisher, style: AppTextStyles.moreTitle),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
          child: Icon(Icons.more_vert, color: AppColors.secondaryTextColor),
        ),
      ],
    );
  }

  Widget _podcastCategoryCard({required ImageProvider image}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: 180,
      height: 96,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image(image: image),
    );
  }
}
