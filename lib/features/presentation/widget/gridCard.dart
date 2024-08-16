import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/string.dart';

class GCard extends StatelessWidget {
  const GCard({
    super.key,
    required this.coffeeName,
    required this.imagePath,
    required this.coffeePrice,
    required this.onClicked,
  });

  final String coffeeName, coffeePrice, imagePath;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onClicked,
        onLongPress: onClicked,
        onDoubleTap: onClicked,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 7),
        decoration: BoxDecoration(
            color: AColor.background,
            borderRadius: BorderRadius.circular(10),
            boxShadow:  [
              BoxShadow(
                  blurRadius: 8,
                  spreadRadius: 3,

                  color: Colors.black.withOpacity(0.7)
              )
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image(
                    height: 120,
                    width: 120,
                    fit: BoxFit.contain,
                    image: AssetImage(imagePath),
                  ),
                ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(
                coffeeName,
                style: TextStyle(color: AColor.onBackground, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
              child: Text(AString.coffeeStatus,
                  style: TextStyle(color: AColor.onBackground.withOpacity(0.6))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$$coffeePrice",
                      style: TextStyle(color: AColor.onBackground, fontSize: 18)),
                  CircleAvatar(
                    backgroundColor: AColor.textColor,
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
