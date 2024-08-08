import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../util/colors/colors.dart';
import '../../../util/device/device.dart';
import '../../../util/image/image.dart';
import '../../../util/string/string.dart';

class FovoriteCard extends StatelessWidget {
  const FovoriteCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage(AImage.blackCoffee)),
          ),
          Container(
            width: ADevice.getWidth(context),
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
                color: AColor.background.withOpacity(0.1),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                      color: AColor.onBackground.withOpacity(0.1),
                      blurRadius: 2,
                      spreadRadius: 1)
                ]),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              AString.cappuccino,
                              style: TextStyle(
                                  fontSize: 20, color: AColor.onBackground),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "With Streamed milk",
                                style:
                                TextStyle(fontSize: 12, color: AColor.onBackground.withOpacity(0.7)),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          color: AColor.background,
                          padding: const EdgeInsets.all(10),
                          child: Column(

                            children: [
                              Image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(AImage.coffee)),
                              Text(
                                "Coffee",
                                style:
                                TextStyle(color: AColor.onBackground),
                              )
                            ],
                          ),
                        ) ,
                        Container(
                          padding: const EdgeInsets.all(10),
                          color: AColor.background,
                          child: Column(
                            children: [
                              Image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(AImage.coffee)),
                              Text(
                                "Milk",
                                style:
                                TextStyle(color: AColor.onBackground),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: AColor.textColor,size: 40,),
                    Text("4.5",style: TextStyle(fontSize: 25,color: AColor.onBackground,fontWeight: FontWeight.bold),),
                    Text(" (4528)",style: TextStyle(fontSize: 15,color: AColor.onBackground),),
                    const SizedBox(width: 50,),
                    Container(
                      color: AColor.background,
                      padding: const EdgeInsets.all(10),
                      child: Text("Medium Roasted",style: TextStyle(color: AColor.onBackground),),
                    )

                  ],
                ),
                const SizedBox(height: 15,),
                Text("Description\nCappuccino is a latte made with more foam than steamed milk, often with a sprinkle of cocoa powder or cinnamon on top.",style: TextStyle(color: AColor.onBackground),),


              ],


            ),
          ),

        ],

    );
  }
}
