import 'dart:math';

import 'package:coffee_shop/presentation/detail/detailScreen.dart';
import 'package:coffee_shop/util/colors/colors.dart';
import 'package:coffee_shop/util/image/image.dart';
import 'package:coffee_shop/util/string/string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../component/widget/gridCard.dart';
import '../component/widget/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int randomIndex = random.nextInt(3);
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
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AColor.background,
        drawer: Drawer(

          backgroundColor: AColor.background,
          child:  SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AColor.onBackground,
                        shape: BoxShape.circle
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Icon(
                          size: 70,
                          Icons.person,color: AColor.textColor,),
                      ),
                    ),
                    const Divider(height: 30,thickness: 0,color: Colors.transparent,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: (){}, child: Text("Payment Method",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground),)),
                              const SizedBox(height: 10,),
                              TextButton(onPressed: (){}, child: Text("Feedback",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground),)),
                              const SizedBox(height: 10,),
                              TextButton(onPressed: (){}, child:Text("Support ",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground),)),
                              const SizedBox(height: 10,),
                                TextButton(onPressed: (){}, child:Text("About us",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground),)),
                              const SizedBox(height: 10,),
                                  TextButton(onPressed: (){}, child: Text("Help",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground),))

                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme:
              Theme.of(context).iconTheme.copyWith(color: AColor.onBackground),
          actions: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(
                  focusColor: Colors.indigoAccent,
                  hoverColor: AColor.textColor,
                  splashColor: Colors.yellow,
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: AColor.onBackground,
                  ),
                ))
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  pinned: true,
                  automaticallyImplyLeading: false,
                  expandedHeight: 180,
                  backgroundColor: AColor.background,
                  flexibleSpace: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Text(
                              AString.onTop,
                              style: GoogleFonts.abel().copyWith(
                                  color: AColor.onBackground.withOpacity(0.6),
                                  fontSize: 25),
                            ),
                          ),
                          const Search(),
                        ],
                      ),
                    ),
                  ),
                  bottom: TabBar(
                      indicatorColor: AColor.textColor,
                      unselectedLabelColor: AColor.onBackground,
                      dividerColor: Colors.transparent,
                      labelColor: AColor.textColor,
                      tabs: [
                        Tab(text: AString.hotCoffee),
                        Tab(text: AString.coldCoffee),
                        Tab(text: AString.cappuccino),
                      ]),
                )
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    mainAxisExtent: 280,
                    childAspectRatio: 150 / 195,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return coffee[index % 4];
                },
              ),
            )),
      ),
    );
  }
}
