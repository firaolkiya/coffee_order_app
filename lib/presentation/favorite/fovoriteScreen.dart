import 'package:coffee_shop/util/colors/colors.dart';

import 'package:flutter/material.dart';

import '../component/widget/favorite_card.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AColor.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          title: Text(
            "Favorites Coffee",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AColor.onBackground),
          ),
        ),
        body:  ListView.builder(
            itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) => const FovoriteCard()),
        );
  }
}

