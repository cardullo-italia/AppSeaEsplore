

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';
import 'package:seaesplore/models/authModel.dart';
import 'package:seaesplore/models/regModel.dart';
import 'package:seaesplore/router/routers.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthModel(),
        ),
        ChangeNotifierProvider(create: (context) => RegistrationAuth(),),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/SplashScreen',
      debugShowCheckedModeBanner: false,
      getPages: PageSeaEsplore.page,
    );
  }
}
