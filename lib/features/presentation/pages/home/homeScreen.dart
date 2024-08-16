import 'package:coffee_shop/core/constant/colors.dart';
import 'package:coffee_shop/core/constant/string.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constant/dummy_data.dart';
import '../../widget/my_drawer.dart';
import '../../widget/search.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AColor.background,
        drawer: const MyDrawer(),
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
          floatHeaderSlivers: true,
           physics: const BouncingScrollPhysics(),
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(

                  automaticallyImplyLeading: false,
                  toolbarHeight: 100,

                  backgroundColor: AColor.background,
                  flexibleSpace: Column(
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


                  bottom: TabBar(
                    physics: const BouncingScrollPhysics(),
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
                physics: const BouncingScrollPhysics(),
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
