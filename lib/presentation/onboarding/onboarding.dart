import 'package:coffee_shop/presentation/dashboard/dashboard_screen.dart';
import 'package:coffee_shop/util/device/device.dart';
import 'package:coffee_shop/util/image/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
              height: ADevice.getHeight(context),
              fit: BoxFit.fitHeight,
              image: AssetImage(AImage.bg)),
          Positioned(
              top: 150,
              left: ADevice.getWidth(context) / 2 - 30,
              child: Text(
                "Coffee Shop",
                style: GoogleFonts.pacifico()
                    .copyWith(color: Colors.white, fontSize: 24),
              )),
          Positioned(
            top: ADevice.getHeight(context) - 170,
            left: ADevice.getWidth(context) / 2 - 60,
            child: FilledButton(
                onPressed: () {
                  Get.to(const Dashboard());
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  // Background color
                  side: const BorderSide(color: Colors.blue, width: 1),
                  // Border color and width
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                // Rounded corners

                child: const Text("Get Started")),
          ),
          Positioned(
              top: ADevice.getHeight(context) - 230,
              left: ADevice.getWidth(context) / 2 - 150,
              child: Text(
                "Feeling Low? Take a Sip of Coffee",
                style: GoogleFonts.poppins().copyWith(
                    color: Colors.white.withOpacity(0.7), fontSize: 16),
              )),
        ],
      ),
    );
  }
}
