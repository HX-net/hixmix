import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/core/theme/app_text_style.dart';
import 'package:hixmix/gen/assets.gen.dart';

class MoodsPage extends StatelessWidget {
  const MoodsPage({super.key});

  List<Widget> get genresItems => [
    _moodGenersCard(image: Assets.images.geners.blues.provider()),
    _moodGenersCard(image: Assets.images.geners.classical.provider()),
    _moodGenersCard(image: Assets.images.geners.country.provider()),
    _moodGenersCard(image: Assets.images.geners.danceElectro.provider()),
    _moodGenersCard(image: Assets.images.geners.decades.provider()),
    _moodGenersCard(image: Assets.images.geners.hipHop.provider()),
    _moodGenersCard(image: Assets.images.geners.indie.provider()),
    _moodGenersCard(image: Assets.images.geners.instrumentals.provider()),
    _moodGenersCard(image: Assets.images.geners.jazz.provider()),
    _moodGenersCard(image: Assets.images.geners.kPop.provider()),
    _moodGenersCard(image: Assets.images.geners.latin.provider()),
    _moodGenersCard(image: Assets.images.geners.mETAl.provider()),
    _moodGenersCard(image: Assets.images.geners.pop.provider()),
    _moodGenersCard(image: Assets.images.geners.punk.provider()),
    _moodGenersCard(image: Assets.images.geners.rB.provider()),
    _moodGenersCard(image: Assets.images.geners.reggae.provider()),
    _moodGenersCard(image: Assets.images.geners.rock.provider()),
    _moodGenersCard(image: Assets.images.geners.soulFunk.provider()),
  ];


  List<Widget> get moodsItems => [    
    _moodGenersCard(image: Assets.images.moods.chill.provider()),
    _moodGenersCard(image: Assets.images.moods.comedy.provider()),
    _moodGenersCard(image: Assets.images.moods.dinner.provider()),
    _moodGenersCard(image: Assets.images.moods.driving.provider()),
    _moodGenersCard(image: Assets.images.moods.family.provider()),
    _moodGenersCard(image: Assets.images.moods.focus.provider()),
    _moodGenersCard(image: Assets.images.moods.party.provider()),
    _moodGenersCard(image: Assets.images.moods.rainyDay.provider()),
    _moodGenersCard(image: Assets.images.moods.romance.provider()),
    _moodGenersCard(image: Assets.images.moods.sleep.provider()),
    // _moodGenersCard(image: Assets.images.moods.stories.provider()),
    // _moodGenersCard(image: Assets.images.moods.top50.provider()),
    _moodGenersCard(image: Assets.images.moods.travel.provider()),
    _moodGenersCard(image: Assets.images.moods.workout.provider()),
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
              SizedBox(height: 50,),
              Align(
                alignment: AlignmentGeometry.topCenter,
                child: Text("Moods", style: AppTextStyles.sectionTitle),
              ),
              SizedBox(height: 20),Table(
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
    required ImageProvider image,
    // required String label,
    // required String type,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      width: 171,
      height: 96,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image(image: image),
    );
  }
}
