import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_navbar.dart';

void main() => runApp(FoodDeliveryApp());

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Starvy Meal",
      home: const BottomNavbar(),
    );
  }
}
