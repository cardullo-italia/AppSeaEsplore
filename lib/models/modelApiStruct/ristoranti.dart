import 'dart:convert';

import 'package:flutter/services.dart';

class RistorantiLoc {
  final String nameResturant;
  final String img;
  final String indirizzo;
  final String stars;
  final String zona;

  RistorantiLoc(
      {required this.nameResturant,
      required this.img,
      required this.indirizzo,
      required this.stars,
      required this.zona});

  factory RistorantiLoc.fromJson(Map<String, dynamic> json) {
    return RistorantiLoc(
      nameResturant: json['nome_ristorante'] ?? '',
      img: json['img_ristorante'],
      stars: json['stars'],
      zona: json['zona'],
      indirizzo: json['indirizzo'],
    );
  }

  static Future<List<RistorantiLoc>> ristoranteAll() async {
    var response = await rootBundle.loadString('assets/api/apiRistoranti.json');
    if (response.isNotEmpty) {
      List<dynamic> jsonResponse = jsonDecode(response);
      return jsonResponse.map((json) => RistorantiLoc.fromJson(json)).toList();
    } else {
      return [];
    }
  }
}
