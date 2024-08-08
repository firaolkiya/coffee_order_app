import 'package:coffee_shop/presentation/cart/cart_screen.dart';
import 'package:coffee_shop/presentation/favorite/fovoriteScreen.dart';
import 'package:coffee_shop/presentation/home/homeScreen.dart';
import 'package:coffee_shop/util/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BottomNavController());
    return Scaffold(
      backgroundColor: AColor.background,
      bottomNavigationBar: Obx(
        () =>
        NavigationBar(
          surfaceTintColor: AColor.background,
          backgroundColor: AColor.background.withOpacity(0.5),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: AColor.textColor,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (value) => {
            controller.selectedIndex.value = value
          },
            destinations:  [
              NavigationDestination(
                  icon: Icon(Icons.home,color: AColor.onBackground,), label: "home"),
              NavigationDestination(icon: Icon(CupertinoIcons.heart_solid,color: AColor.onBackground), label: "like"),
              NavigationDestination(icon: Icon(Icons.shopping_cart,color: AColor.onBackground), label: "cart"),
            ]
        ),
      ),
      body:
      Obx(
        () =>
          controller.screens[controller.selectedIndex.value])
    );
  }

}

class BottomNavController extends GetxController {
  Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const Favorite(),
    const CartScreen(),
  ];
}