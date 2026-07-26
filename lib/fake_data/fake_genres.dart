import 'package:hixmix/gen/assets.gen.dart';
import 'package:hixmix/models/genres_model.dart';

class FakeGenres {
  static List<GenresModel> genres =[
    GenresModel(name: "blues", imageUrl: Assets.images.geners.blues.image(), id: 1),
    GenresModel(name: "classical", imageUrl: Assets.images.geners.classical.image(), id: 1),
    GenresModel(name: "country", imageUrl: Assets.images.geners.country.image(), id: 1),
    GenresModel(name: "dance electro", imageUrl: Assets.images.geners.danceElectro.image(), id: 1),
    GenresModel(name: "decades", imageUrl: Assets.images.geners.decades.image(), id: 1),
    GenresModel(name: "hip hop", imageUrl: Assets.images.geners.hipHop.image(), id: 1),
    GenresModel(name: "indie", imageUrl: Assets.images.geners.indie.image(), id: 1),
    GenresModel(name: "instrumentals", imageUrl: Assets.images.geners.instrumentals.image(), id: 1),
    GenresModel(name: "jazz", imageUrl: Assets.images.geners.jazz.image(), id: 1),
    GenresModel(name: "k pop", imageUrl: Assets.images.geners.kPop.image(), id: 1),
    GenresModel(name: "latin", imageUrl: Assets.images.geners.latin.image(), id: 1),
    GenresModel(name: "metal", imageUrl: Assets.images.geners.mETAl.image(), id: 1),
    GenresModel(name: "pop", imageUrl: Assets.images.geners.pop.image(), id: 1),
    GenresModel(name: "punk", imageUrl: Assets.images.geners.punk.image(), id: 1),
    GenresModel(name: "rB", imageUrl: Assets.images.geners.rB.image(), id: 1),
    GenresModel(name: "reggae", imageUrl: Assets.images.geners.reggae.image(), id: 1),
    GenresModel(name: "rock", imageUrl: Assets.images.geners.rock.image(), id: 1),
    GenresModel(name: "soul funk", imageUrl: Assets.images.geners.soulFunk.image(), id: 1),
  ];
}