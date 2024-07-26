import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seaesplore/controller/navigationController.dart';

class NavigationMenuBar extends StatelessWidget {
  const NavigationMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.find(); 
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 45,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.favorite), label: "Preferiti"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profilo"),
          ],
        ),
      ),
      body: Obx(
        () => controller.screen[controller.selectedIndex.value],
      ),
    );
  }
}
