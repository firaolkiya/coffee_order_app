import 'package:coffee_shop/core/constant/string.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../features/presentation/pages/detail/detailScreen.dart';
import '../../features/presentation/widget/gridCard.dart';
import 'image.dart';

final coffee = [
  GCard(
    coffeeName: AString.blackCoffee,
    coffeePrice: "25.0",
    imagePath: AImage.blackCoffee,
    onClicked: () {
      Get.to(DetailScreen(
        coffeeName: AString.blackCoffee,
        coffeePrice: "25.0",
        imagePath: AImage.blackCoffee,
      ));
    },
  ),
  GCard(
    coffeeName: AString.latte,
    coffeePrice: "15.0",
    imagePath: AImage.latte,
    onClicked: () {
      Get.to(DetailScreen(
        coffeeName: AString.latte,
        coffeePrice: "15.0",
        imagePath: AImage.latte,
      ));
    },
  ),
  GCard(
    coffeeName: AString.espresso,
    coffeePrice: "31.0",
    imagePath: AImage.espresso,
    onClicked: () {
      Get.to(DetailScreen(
        coffeeName: AString.espresso,
        coffeePrice: "31.0",
        imagePath: AImage.espresso,
      ));
    },
  ),
  GCard(
    coffeeName: AString.newCoffee,
    coffeePrice: "27.0",
    imagePath: AImage.addis,
    onClicked: () {
      Get.to(DetailScreen(
        coffeeName: AString.newCoffee,
        coffeePrice: "31.0",
        imagePath: AImage.addis,
      ));
    },
  )
];