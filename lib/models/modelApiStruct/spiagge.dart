import 'dart:convert';

import 'package:flutter/services.dart';

class Spiaggie {
  final String nameSpiaggia;
  final String img;
  final String indirizzo;
  final String star;
  final String zona;

  Spiaggie(
      {required this.nameSpiaggia,
      required this.img,
      required this.indirizzo,
      required this.star,
      required this.zona});

  factory Spiaggie.fromJson(Map<String, dynamic> json) {
    return Spiaggie(
        nameSpiaggia: json['nome_spiaggia'],
        img: json['img_spiaggia'],
        indirizzo: json['indirizzo'],
        star: json['stars'],
        zona: json['zona']);
  }

  static Future<List<Spiaggie>> spiaggieAll() async {
    var response = await rootBundle.loadString('assets/api/apiSpiagge.json');
    if (response.isNotEmpty) {
      List<dynamic> jsonResponse = jsonDecode(response);
      return jsonResponse.map((json) => Spiaggie.fromJson(json)).toList();
    } else {
      return [];
    }
  }
}
