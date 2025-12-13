import 'package:flutter/material.dart';
import 'package:food_delivery/pages/bottom_navbar.dart';

void main() => runApp(const FoodDeliveryApp());

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Starvy Meal",
      theme: ThemeData(
        useMaterial3: true,
        //colorSchemeSeed: Colors.deepOrange, // For Material 3
        primaryColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.grey[100],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(fontSize: 23, fontFamily: 'OpenSans'),
        ),
        dividerTheme: DividerThemeData(thickness: 2, indent: 20, endIndent: 20),
        listTileTheme: ListTileThemeData(iconColor: Colors.deepOrange),
        fontFamily: 'OpenSans',
      ),
      home: const BottomNavbar(),
    );
  }
}
