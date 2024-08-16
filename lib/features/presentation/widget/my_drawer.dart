
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(

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
    );
  }
}
