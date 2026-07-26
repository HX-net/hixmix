import 'package:hixmix/gen/assets.gen.dart';
import 'package:hixmix/models/moods_model.dart';

class FakeMoods {
  static List<MoodsModel> moods = [
    MoodsModel(name: "chill", imageUrl: Assets.images.moods.chill.image(), id: 1),
    MoodsModel(name: "comedy", imageUrl: Assets.images.moods.comedy.image(), id: 2),
    MoodsModel(name: "dinner", imageUrl: Assets.images.moods.dinner.image(), id: 3),
    MoodsModel(name: "driving", imageUrl: Assets.images.moods.driving.image(), id: 4),
    MoodsModel(name: "family", imageUrl: Assets.images.moods.family.image(), id: 5),
    MoodsModel(name: "focus", imageUrl: Assets.images.moods.focus.image(), id: 6),
    MoodsModel(name: "party", imageUrl: Assets.images.moods.party.image(), id: 7),
    MoodsModel(name: "rainy day", imageUrl: Assets.images.moods.rainyDay.image(), id: 8),
    MoodsModel(name: "romance", imageUrl: Assets.images.moods.romance.image(), id: 9),
    MoodsModel(name: "sleep", imageUrl: Assets.images.moods.sleep.image(), id: 10),
    // MoodsModel(name: "stories", imageUrl: Assets.images.moods.stories.image(), id: 1),
    // MoodsModel(name: "top50", imageUrl: Assets.images.moods.top50.image(), id: 1),
    MoodsModel(name: "travel", imageUrl: Assets.images.moods.travel.image(), id: 11),
    MoodsModel(name: "workout", imageUrl: Assets.images.moods.workout.image(), id: 12),
  ];
}