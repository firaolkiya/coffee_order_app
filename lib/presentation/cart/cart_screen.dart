import 'package:coffee_shop/util/colors/colors.dart';
import 'package:coffee_shop/util/image/image.dart';
import 'package:coffee_shop/util/string/string.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../component/widget/recent_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AColor.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Shopping History", style: TextStyle(color: AColor.onBackground),),),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          const ShowTitle(),
           ListView.builder(
                   physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => const RecentCard(),),


          const ShowTitle(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            shrinkWrap: true,
            itemBuilder: (context, index) => const RecentCard(),),

          const ShowTitle(),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) => const RecentCard(),),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: FilledButton(
              
               style: OutlinedButton.styleFrom(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                 minimumSize: Size(double.infinity,60),
                 backgroundColor: AColor.textColor

               ),
                onPressed: (){}, child: Text("Download")),
          )






        ],
      ),

    );
  }
}

class ShowTitle extends StatelessWidget {
  const ShowTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order Date",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground,fontSize: 24)),
              Text("july 3 2024",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AColor.onBackground,fontSize: 19),)
            ],
          ),
          Column(
            children: [
              Text("Total amount",style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: AColor.onBackground,fontSize: 24)),
              Text("\$70",style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AColor.textColor,fontSize: 22))
            ],
          )
        ],
      ),
    );
  }
}

