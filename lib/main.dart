import 'package:coffee_shop/presentation/dashboard/dashboard_screen.dart';
import 'package:coffee_shop/presentation/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding()
    );
  }
}
