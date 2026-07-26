import 'package:flutter/material.dart';
import 'package:hixmix/core/theme/app_colors.dart';
import 'package:hixmix/core/theme/app_text_style.dart';
import 'package:hixmix/gen/assets.gen.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPage();
}

class _SongPage extends State<SongPage> {
  final String playliatName = "";

  double _currentPosition = 0.3;
  final double _totalDuration = 1.0;

  String formatTime(double position) {
    final duration = Duration(seconds: (position * 225).toInt());
    final minutes = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final seconds = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.topLeft,
                child: ElevatedButton.icon(
                  icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  ),
                  label: Text("back", style: AppTextStyles.itemTitle),
                ),
              ),
              if (playliatName == "")
                (SizedBox(height: 100))
              else
                Column(
                  children: [
                    SizedBox(height: 20),
                    Text(playliatName),
                    SizedBox(height: 50),
                  ],
                ),
              Align(
                alignment: AlignmentGeometry.center,
                child: Column(
                  children: [
                    Image(
                      image: Assets.images.musicCover.image296.provider(),
                      width: size.width / 1.38,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "Shine On You Crazy Diamond",
                        style: AppTextStyles.itemTitle,
                      ),
                    ),
                    Text("Pink Floyd ", style: AppTextStyles.itemDescriptions),
                  ],
                ),
              ),
              SizedBox(height: 100),
              SizedBox(
                width: size.width / 1.3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(Icons.add, color: Colors.white, size: 30),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 4.0,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 6.0,
                  ),
                  overlayShape: const RoundSliderOverlayShape(
                    overlayRadius: 14.0,
                  ),
                  activeTrackColor: AppColors.selectedTextColor,
                  inactiveTrackColor: AppColors.progressBarColor,
                  thumbColor: AppColors.selectedTextColor,
                ),
                child: Slider(
                  value: _currentPosition,
                  max: _totalDuration,
                  onChanged: (value) {
                    setState(() {
                      _currentPosition = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      formatTime(_currentPosition),
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      formatTime(_totalDuration),
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: size.width/1.14,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Image(image: Assets.icons.dislikeThisSong.provider()),
                    ),ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Image(image: Assets.icons.previous.provider()),
                    ),ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child:Row(
                        children: [
                          Image(image: Assets.icons.rectangle2569.provider()),
                          SizedBox(width: 8,),
                          Image(image: Assets.icons.rectangle2570.provider()),
                        ],
                      ),
                    ),ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Image(image: Assets.icons.path7.provider()),
                    ),ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          AppColors.bgColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Image(image: Assets.icons.likeThisSongMobile.provider()),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
