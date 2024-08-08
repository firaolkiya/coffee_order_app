import 'package:coffee_shop/presentation/component/widget/alert_dialog.dart';
import 'package:coffee_shop/presentation/home/homeScreen.dart';
import 'package:coffee_shop/util/colors/colors.dart';
import 'package:coffee_shop/util/string/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../payment/payment_screen.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.coffeeName,
      required this.coffeePrice,
      required this.imagePath});

  final String coffeeName, coffeePrice, imagePath;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StateController());
    return Obx(
      () => Scaffold(
        backgroundColor: AColor.background,
        appBar: AppBar(
          leading: InkWell(
            onTap: (){Get.to(const HomeScreen());},
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: IconButton(
                onPressed: () {
                  //Get.to(HomeScreen());
                },
                icon: Icon(
                    color: AColor.onBackground, Icons.arrow_back_ios_new_sharp),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: double.infinity,
                    fit: BoxFit.fitWidth,
                    image: AssetImage(imagePath)),
                Text(
                  AString.coffeeStatus,
                  style: GoogleFonts.aboreto()
                      .copyWith(color: AColor.onBackground),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  coffeeName,
                  style: TextStyle(
                      color: AColor.onBackground,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card.outlined(
                      color: AColor.background.withOpacity(0.8),
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                if (controller.amount.value > 1) {
                                  controller.amount.value--;
                                }
                              },
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: AColor.onBackground,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold),
                              )),
                          Text(
                            controller.amount.value.toString(),
                            style: TextStyle(
                                color: AColor.onBackground,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {
                                controller.amount.value++;
                              },
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: AColor.onBackground,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                      ),
                    ),
                    Text(
                      "\$${double.parse(coffeePrice) * controller.amount.value}",
                      style:
                          TextStyle(color: AColor.onBackground, fontSize: 30),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  AString.aboutCoffee,
                  style: TextStyle(color: AColor.onBackground),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Volume  28L",
                    style: TextStyle(color: AColor.onBackground)),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                AColor.onBackground.withOpacity(0.1))),
                        onPressed: () {
                          Get.to(PaymentScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Add to cart",
                            style: TextStyle(
                                fontSize: 17, color: AColor.textColor),
                          ),
                        )),
                    IconButton(
                        splashColor: AColor.textColor.withOpacity(0.8),
                        style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            backgroundColor:
                                MaterialStatePropertyAll(AColor.textColor)),
                        onPressed: () {
                          DialogShower.displayDialog(" ${AString.cappuccino} is the most Favorite Coffee of many customers", "Do you Like ${AString.cappuccino}", context);
                        },
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            CupertinoIcons.heart,
                            color: AColor.onBackground,
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StateController extends GetxController {
  Rx<int> amount = 1.obs;
}
