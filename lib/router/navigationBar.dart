import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seaesplore/controller/navigationController.dart';

class NavigationMenuBar extends StatelessWidget {
  const NavigationMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find();

    return Scaffold(
      body: Obx(
        () => controller.screen[controller.selectedIndex.value],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color(0xFF1B263B),
          borderRadius: BorderRadius.circular(10),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: controller.selectedIndex.value,
          onTap: (index) => controller.selectedIndex.value = index,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home_filled), 
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Preferiti",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: "Profilo",
            ),
          ],
        ),
      ),
    );
  }
}
