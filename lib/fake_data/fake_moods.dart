import 'package:hixmix/gen/assets.gen.dart';
import 'package:hixmix/models/moods_model.dart';

class FakeMoods {
  static List<MoodsModel> moods = [
    MoodsModel(name: "chill", imageUrl: Assets.images.moods.chill.path, id: 1),
    MoodsModel(name: "comedy", imageUrl: Assets.images.moods.comedy.path, id: 2),
    MoodsModel(name: "dinner", imageUrl: Assets.images.moods.dinner.path, id: 3),
    MoodsModel(name: "driving", imageUrl: Assets.images.moods.driving.path, id: 4),
    MoodsModel(name: "family", imageUrl: Assets.images.moods.family.path, id: 5),
    MoodsModel(name: "focus", imageUrl: Assets.images.moods.focus.path, id: 6),
    MoodsModel(name: "party", imageUrl: Assets.images.moods.party.path, id: 7),
    MoodsModel(name: "rainy day", imageUrl: Assets.images.moods.rainyDay.path, id: 8),
    MoodsModel(name: "romance", imageUrl: Assets.images.moods.romance.path, id: 9),
    MoodsModel(name: "sleep", imageUrl: Assets.images.moods.sleep.path, id: 10),
    // MoodsModel(name: "stories", imageUrl: Assets.images.moods.stories.path, id: 1),
    // MoodsModel(name: "top50", imageUrl: Assets.images.moods.top50.path, id: 1),
    MoodsModel(name: "travel", imageUrl: Assets.images.moods.travel.path, id: 11),
    MoodsModel(name: "workout", imageUrl: Assets.images.moods.workout.path, id: 12),
  ];
}