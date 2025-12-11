import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';
import 'package:food_delivery/widgets/favorite_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((e) => e.isFavorite == true);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: favoriteFood
              .map((foodItem) => FavoriteItem(foodItem: foodItem))
              .toList(),
        ),
      ),
    );
  }
}
