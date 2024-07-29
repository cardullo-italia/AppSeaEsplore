import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:seaesplore/models/modelApiStruct/hotel.dart';
import 'package:seaesplore/screens/tabBarScreen/tileGrid/TileGridHotel.dart';

class TabBarHotelScreen extends StatefulWidget {
  const TabBarHotelScreen({super.key});

  @override
  State<TabBarHotelScreen> createState() => _TabBarHotelScreenState();
}

class _TabBarHotelScreenState extends State<TabBarHotelScreen> {
  late Future<List<Hotel>> futureHotel;

  @override
  void initState() {
    super.initState();
    futureHotel = Hotel.hotelAll();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Hotel.hotelAll(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return const Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text("Nessun dato disponibile"),
          );
        } else {
          return Center( child: Text("Lavori in corso"));
        }
      },
    );
  }
}
