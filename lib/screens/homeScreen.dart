
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seaesplore/router/tabBarNavigation.dart';
import 'package:seaesplore/screens/location/locationWidget.dart';

class HomeScreenUser extends StatefulWidget {
  const HomeScreenUser({super.key});

  @override
  State<HomeScreenUser> createState() => _HomeScreenUserState();
}

class _HomeScreenUserState extends State<HomeScreenUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Localization:",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(CupertinoIcons.location),
                      SizedBox(width: 5),
                      LocationDrop()
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height:15),
            const Expanded(
              child: TabBarNavigation(),
            )
          ],
        ),
      ),
    );
  }
}
