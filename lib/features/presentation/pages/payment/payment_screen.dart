import 'package:coffee_shop/features/presentation/widget/alert_dialog.dart';
import 'package:coffee_shop/core/constant/colors.dart';
import 'package:coffee_shop/core/constant/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AColor.background,
      appBar: AppBar(
        leading: IconButton(onPressed: (){Get.back();}
            , icon:  Icon(Icons.arrow_back_ios,color: AColor.onBackground,)),
        backgroundColor: Colors.transparent,
        title: Text(
          "Payment",
          style: TextStyle(color: AColor.onBackground),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  color: AColor.background,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: AColor.textColor, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Credit Card",
                          style:
                          TextStyle(color: AColor.onBackground, fontSize: 18),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                              width: double.infinity,
                              fit: BoxFit.fitWidth,
                              image: AssetImage(AImage.visa)),
                        ),
                    ]
                  )
              )
                ),

              PaymentCard(image:AImage.wallet,pName: "Wallet"),
              PaymentCard(image:AImage.google,pName: "Wallet"),
              PaymentCard(image:AImage.apple,pName: "Apple"),
              PaymentCard(image:AImage.amazon,pName: "Amazon"),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    backgroundColor: AColor.textColor,
                    minimumSize: const Size(double.infinity, 60)
                  ),
                    onPressed: (){
                    DialogShower.displayDialog("You are paying \$100.20 by using Credit Card, Are you sure?", "Verify Payment", context);

                    },

                    child: const Text("Pay from Credit Card")),
              )

            ],
          ),
        )
    )
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    super.key, required this.image, required this.pName,
  });
  final String image,pName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AColor.textColor,
      focusColor: AColor.textColor,
      hoverColor: AColor.textColor,
      child: Card(
        color: AColor.background,
        shadowColor: AColor.textColor,
        shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(
              style: BorderStyle.solid,
                color: Colors.grey, width: 1)),
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image(image: AssetImage(image))
              ),
              const SizedBox(width: 10,),
              Text(
                pName,
                style: TextStyle(color: AColor.onBackground,fontSize: 18),
              ),
              const Spacer(flex: 1,),
              Text(
                "\$100.20",
                style: TextStyle(color: AColor.onBackground,fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
