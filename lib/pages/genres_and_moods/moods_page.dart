import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/core/theme/app_text_style.dart';
import 'package:hixmix/fake_data/fake_genres.dart';
import 'package:hixmix/fake_data/fake_moods.dart';

class MoodsPage extends StatelessWidget {
  const MoodsPage({super.key});

  List<Widget> get genresItems => [
    ...FakeGenres.genres
        .map((genre) => _moodGenersCard(image: genre.imageUrl))
  ];

  List<Widget> get moodsItems => [
    ...FakeMoods.moods
      .map((mood)=>_moodGenersCard(image: mood.imageUrl))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Text("Genres", style: AppTextStyles.sectionTitle),
              ),
              SizedBox(height: 20),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                },
                children: [
                  for (int i = 0; i < genresItems.length; i += 2)
                    TableRow(
                      children: genresItems.sublist(
                        i,
                        (i + 2).clamp(0, genresItems.length),
                      ),
                    ),
                ],
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Text("Moods", style: AppTextStyles.sectionTitle),
              ),
              SizedBox(height: 20),
              Table(
                columnWidths: const {
                  0: FlexColumnWidth(),
                  1: FlexColumnWidth(),
                },
                children: [
                  for (int i = 0; i < moodsItems.length; i += 2)
                    TableRow(
                      children: moodsItems.sublist(
                        i,
                        (i + 2).clamp(0, moodsItems.length),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _moodGenersCard({
    required String image,
    // required String label,
    // required String type,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16,right: 8),
      width: 171,
      height: 96,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image(image: AssetImage(image)),
    );
  }
}
