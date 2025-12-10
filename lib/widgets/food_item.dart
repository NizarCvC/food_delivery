import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';

class FoodItem extends StatelessWidget {
  final FoodItemModel food;

  const FoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  food.imageUrl,
                  height: 100,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                food.name,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 4),
              Text(
                '\$${food.price}',
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
