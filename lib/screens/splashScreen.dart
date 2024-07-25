import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color(0xFFA5C4D4).withOpacity(0.5),
              BlendMode.srcATop,
            ),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  const Text(
                    "SeaEsplore",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 400),
                  Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: const TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Scopri le migliori\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text: 'destinazioni estive\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text: 'e avventure sul mare.\n',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: ElevatedButton(
                      onPressed: () => {
                        Get.toNamed('/LoginScreenUser')
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(370, 51),
                        backgroundColor: const Color(0xFF1B263B),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        "Accedi",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
