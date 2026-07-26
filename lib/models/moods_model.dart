import 'package:flutter/material.dart';

class MoodsModel {
  final int id;
  final String name;
  final Image imageUrl;

  const MoodsModel({
    required this.name,
    required this.imageUrl,
    required this.id,
  });

  factory MoodsModel.fromJson(Map<String, dynamic> json) {
    return MoodsModel(
      id: json["id"],
      name: json["name"],
      imageUrl: json["imageUrl"],
    );
  }
}
