import 'dart:convert';

import 'package:flutter/services.dart';

class Hotel {
  final String nome;
  final String imgHotel;
  final String indirizzo;
  final String stars;
  final String zona;

  Hotel(
      {required this.nome,
      required this.imgHotel,
      required this.indirizzo,
      required this.stars,
      required this.zona});

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      nome: json['nome'],
      imgHotel: json['img_hotel_bnb'],
      indirizzo: json['indirizzo'],
      stars: json['stars'],
      zona: json['zona'],
    );
  }

  static Future<List<Hotel>> hotelAll() async {
    var response = await rootBundle.loadString('assets/api/apiHotel.json');
    if (response.isNotEmpty) {
      List<dynamic> jsonResponse = jsonDecode(response);
      return jsonResponse.map((json) => Hotel.fromJson(json)).toList();
    } else {
      return [];
    }
  }
}
