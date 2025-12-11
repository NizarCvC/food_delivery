import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';

class FavoriteItem extends StatelessWidget {
  final FoodItemModel foodItem;

  const FavoriteItem({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                foodItem.imageUrl,
                height: size.height * 0.05,
                width: size.width * 0.225,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(width: size.width * 0.04),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodItem.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: size.height * 0.006),
                  Text(
                    '\$ ${foodItem.price}',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.favorite, color: Colors.redAccent),
          ],
        ),
      ),
    );
  }
}
