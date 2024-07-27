import 'dart:convert';

Respuesta welcomeFromJson(String str) => Respuesta.fromJson(json.decode(str));

String welcomeToJson(Respuesta data) => json.encode(data.toJson());

class Respuesta {
  final String answer;
  final bool forced;
  final String image;

  Respuesta({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory Respuesta.fromJson(Map<String, dynamic> json) => Respuesta(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };
}
