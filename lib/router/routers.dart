import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:seaesplore/screens/homeScreen.dart';
import 'package:seaesplore/screens/loginScreen.dart';
import 'package:seaesplore/screens/prefScreen.dart';
import 'package:seaesplore/screens/profileScreen.dart';
import 'package:seaesplore/screens/registrationScreen.dart';
import 'package:seaesplore/screens/splashScreen.dart';

class PageSeaEsplore {
  static final List<GetPage> page = [
    GetPage(name: '/SplashScreen', page: () => const  SplashScreen()),
    GetPage(name: '/LoginScreenUser', page: () => const LoginScreenUser()),
    GetPage(name: '/RegistrationScreenUser', page: () => const RegistrationScreenUser()),
    GetPage(name: '/HomeScreenUser', page: () => const HomeScreenUser()),
    GetPage(name: '/PrefScreenUser' , page: () => const PrefScreenUser()),
    GetPage(name: '/ProfileScreenUser', page: () => const ProfileScreenUser())
  ];
}
