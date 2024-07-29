import 'package:flutter/material.dart';
import 'package:seaesplore/models/modelApiStruct/hotel.dart';

class Tile extends StatelessWidget {
  final Hotel hotelSet;
  const Tile({required this.hotelSet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              hotelSet.imgHotel,
            ),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}
