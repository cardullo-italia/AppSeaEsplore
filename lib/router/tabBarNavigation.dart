import 'package:flutter/material.dart';
import 'package:seaesplore/router/tabBottonWidget/tabButton.dart';
import 'package:seaesplore/screens/tabBarScreen/hotelScreen.dart';
import 'package:seaesplore/screens/tabBarScreen/ristorantiScreen.dart';
import 'package:seaesplore/screens/tabBarScreen/spiaggeScreen.dart';

class TabBarNavigation extends StatelessWidget {
   TabBarNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.transparent,
            indicator: BoxDecoration(),
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            isScrollable: false,
            dividerHeight: 0,
            mouseCursor: SystemMouseCursors.none,
            tabs: [
              Tab(
                child: TabButton(text: "Ristoranti"),
              ),
              Tab(
                child: TabButton(text: "Spiagge"),
              ),
              Tab(
                child: TabButton(text: "Hotel"),
              )
            ],
          ),
          SizedBox(height: 24),
          Expanded(
            child: TabBarView(
              children: [
                TabBarScreenRistoranti(),
                TabBarSpiaggeScreen(),
                TabBarHotelScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
