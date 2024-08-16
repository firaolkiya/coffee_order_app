

import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/image.dart';
import '../../../core/constant/string.dart';

class RecentCard extends StatelessWidget {
  const RecentCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white30,

                  Colors.black54
                ])
        ),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                      fit: BoxFit.fill,
                      height: 50,
                      width: 50,
                      image: AssetImage(AImage.cappuccino)),
                ),
                Column(
                  children:
                  [
                    Text(AString.cappuccino,style: TextStyle(color: AColor.onBackground,fontSize: 18,fontWeight: FontWeight.w700),),
                    Text("With Steamed Milk",style: TextStyle(color: AColor.onBackground),)
                  ],
                ),
                Text('\$ 37.20',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 22),)
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AColor.background,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('S ',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(
                          height: 70,
                          child: VerticalDivider(
                            width: 35,
                            thickness: 2,
                            color: AColor.onBackground,
                          ),
                        ),
                        Text('\$5.20',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                      ]
                  ),
                ),
                Text('X2',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                Text('\$10.4',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AColor.background,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('M',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(
                            height: 70,
                            child: VerticalDivider(
                              width: 35,
                              thickness: 2,
                              color: AColor.onBackground,
                            ),
                          ),
                          Text('\$5.20',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                        ]
                    )
                ),
                Text('X2',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                Text('\$10.4',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AColor.background,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('L ',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                          SizedBox(
                            height: 70,
                            child: VerticalDivider(
                              width: 35,
                              thickness: 2,
                              color: AColor.onBackground,
                            ),
                          ),
                          Text('\$5.20',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                        ]
                    )
                ),
                Text('X2',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),),
                Text('\$10.4',style: TextStyle(color: AColor.onBackground,fontWeight: FontWeight.bold,fontSize: 18),)
              ],
            )
          ],
        ),
      ),
    );
  }
}