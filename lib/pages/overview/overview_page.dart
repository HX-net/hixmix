import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/core/theme/app_text_style.dart';
import 'package:hixmix/gen/assets.gen.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text("Recently played", style: AppTextStyles.sectionTitle),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: _artistCard(
                        image: Assets.images.artist.queen.provider(),
                        label: "Queen",
                        likeCount: "948,117",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.playlistRadio.provider(),
                        label: "70s Rock Anthems Radio",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.woodstockLegends
                            .provider(),
                        label: "Progressive Rock",
                        likeCount: "128,045",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Make monday more productive",
                      style: AppTextStyles.sectionTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.deepFocus.provider(),
                        label: "Deep Focus",
                        likeCount: "678,612",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.productiveMorning
                            .provider(),
                        label: "Productive Morning",
                        likeCount: "244,412",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.whiteNoise.provider(),
                        label: "White Noise",
                        likeCount: "146,264",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Browse",
                            style: AppTextStyles.sectionTitle,
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
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
                  ],
                ),
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Explore by genre and mood",
                      style: AppTextStyles.moreTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _moodGenersCard(
                        image: Assets.images.geners.hipHop.provider(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _moodGenersCard(
                        image: Assets.images.geners.pop.provider(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _moodGenersCard(
                        image: Assets.images.geners.rock.provider(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text("Playlist picks", style: AppTextStyles.sectionTitle),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Selected for you based on your recent activity",
                      style: AppTextStyles.moreTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.composers.provider(),
                        label: "Russian Composers",
                        likeCount: "71,622",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.guitarSolos.provider(),
                        label: "Guitar Solos",
                        likeCount: "299,154",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.wORKOUTRock.provider(),
                        label: "Workout Rock",
                        likeCount: "414,228",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Podcasts",
                            style: AppTextStyles.sectionTitle,
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
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
                  ],
                ),
              ),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "Explore by categories and popularity",
                      style: AppTextStyles.moreTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _moodGenersCard(
                        image: Assets.images.moods.comedy.provider(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _moodGenersCard(
                        image: Assets.images.moods.top50.provider(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _moodGenersCard(
                        image: Assets.images.moods.stories.provider(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "New releases for you",
                            style: AppTextStyles.sectionTitle,
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
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
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.musicCover.image696.provider(),
                        label: "LP5",
                        description: "Apparat",
                        releaseTime: "Album release: 22/03/19",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.musicCover.image695.provider(),
                        label: "Numb Numb Juice",
                        description: "Schoolboy Q",
                        releaseTime: "Album release: 14/03/19",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.musicCover.image693.provider(),
                        label: "Drip or Down 2",
                        description: "Gunna",
                        releaseTime: "Album release: 22/02/19",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      "You might like these artists",
                      style: AppTextStyles.sectionTitle,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: _artistCard(
                        image: Assets.images.artist.maskGroup321.provider(),
                        label: "The Smiths",
                        likeCount: "371,145",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: _artistCard(
                        image: Assets.images.artist.theClash.provider(),
                        label: "The Clash",
                        likeCount: "367,784",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: _artistCard(
                        image: Assets.images.artist.bowie.provider(),
                        label: "David Bowie",
                        likeCount: "490,451",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Text(
                            "Popular playlists",
                            style: AppTextStyles.sectionTitle,
                          ),
                        ),
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 0, 10, 0),
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
                  ],
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 30),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.hipHopHits.provider(),
                        label: "Hip Hop Hits",
                        likeCount: "551,614",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.popFresh.provider(),
                        label: "Pop Fresh!",
                        likeCount: "422,318",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.fromLTRB(0, 0, 20, 0),
                      child: _musicCard(
                        image: Assets.images.playlist.rapBangers.provider(),
                        label: "Rap Bangers",
                        likeCount: "892,318",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.copyright, size: 16, color: Colors.grey),
                  SizedBox(width: 4),
                  Text(
                    "2026 HixMix - Owner : Hx.Net",
                    style: AppTextStyles.moreTitle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _musicCard({
    required ImageProvider image,
    required String label,
    String likeCount = "",
    String description = "",
    String releaseTime = "",
  }) {
    return Stack(
      children: [
        SizedBox(
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
              likeCount != ""
                  ? Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: AppColors.secondaryTextColor,
                          size: 15,
                        ),
                        SizedBox(width: 2),
                        Text(likeCount, style: AppTextStyles.likeCount),
                      ],
                    )
                  : const SizedBox.shrink(),
              description != ""
                  ? Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        description,
                        style: AppTextStyles.itemDescriptions,
                      ),
                    )
                  : SizedBox.shrink(),
              releaseTime != ""
                  ? Align(
                      alignment: AlignmentGeometry.centerLeft,
                      child: Text(
                        releaseTime,
                        style: AppTextStyles.itemDescriptions,
                      ),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        ),
        SizedBox(
          width: 150,
          height: 150,
          child: Align(
            alignment: AlignmentGeometry.bottomLeft,
            child: Padding(
              padding: EdgeInsetsGeometry.all(10),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Color.fromARGB(100, 0, 0, 0),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Icon(Icons.play_arrow, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _artistCard({
    required ImageProvider image,
    required String label,
    required String likeCount,
  }) {
    return SizedBox(
      width: 150,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Image(image: image),
          ),
          Text(label, style: AppTextStyles.itemTitle),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: AppColors.secondaryTextColor,
                size: 15,
              ),
              SizedBox(width: 2),
              Text(likeCount, style: AppTextStyles.likeCount),
            ],
          ),
        ],
      ),
    );
  }

  Widget _moodGenersCard({
    required ImageProvider image,
    // required String label,
    // required String type,
  }) {
    return Container(
      width: 150,
      height: 85,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Image(image: image),
    );
  }
}
