import 'package:flutter/material.dart';
import 'package:food_delivery/pages/homepage.dart';

void main() => runApp(FoodDeiveryApp());

class FoodDeiveryApp extends StatelessWidget {
  const FoodDeiveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Starvy Meal",
      home: const Homepage(),
    );
  }
}
