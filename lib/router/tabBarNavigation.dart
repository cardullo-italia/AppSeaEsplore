import 'package:flutter/material.dart';
import 'package:seaesplore/router/tabBottonWidget/tabButton.dart';
import 'package:seaesplore/screens/tabBarScreen/hotelScreen.dart';
import 'package:seaesplore/screens/tabBarScreen/ristorantiScreen.dart';
import 'package:seaesplore/screens/tabBarScreen/spiaggeScreen.dart';

class TabBarNavigation extends StatelessWidget {
  const TabBarNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.transparent, 
            indicator: BoxDecoration(),
            labelColor: Colors.black, 
            unselectedLabelColor: Colors.grey, 
            isScrollable: true, 
            dividerHeight: 0, 
            tabs: [
              TabButton(text: "Ristoranti"),
              TabButton(text: "Spiagge"),
              TabButton(text: "Hotel"),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                TabBarScreenRistoranti(),
                TabBarHotelScreen(),
                TabBarSpiaggeScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
