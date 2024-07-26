import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seaesplore/screens/homeScreen.dart';
import 'package:seaesplore/screens/prefScreen.dart';
import 'package:seaesplore/screens/profileScreen.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final List<Widget> screen = [
    const HomeScreenUser(),
    const PrefScreenUser(),
    const ProfileScreenUser(),
    ];
}
