
class GenresModel {
  final int id;
  final String name;
  final String imageUrl;

  const GenresModel({
    required this.name,
    required this.imageUrl,
    required this.id,
  });

  factory GenresModel.fromJson(Map<String, dynamic> json) {
    return GenresModel(
      id: json["id"],
      name: json["name"],
      imageUrl: json["imageUrl"],
    );
  }
}