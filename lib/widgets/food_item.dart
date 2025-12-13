import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';

class FoodItem extends StatefulWidget {
  final int foodIndex;

  const FoodItem({super.key, required this.foodIndex});

  @override
  State<FoodItem> createState() => _FoodItemState();
}

class _FoodItemState extends State<FoodItem> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentGeometry.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        food[widget.foodIndex].imageUrl,
                        height: size.height * 0.11,
                        width: size.width * 0.8,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: InkWell(
                        onTap: () => setState(() {
                          food[widget.foodIndex] = food[widget.foodIndex]
                              .copyWith(
                                isFavorite: !food[widget.foodIndex].isFavorite,
                              );
                        }),
                        child: Icon(
                          size: 20,
                          food[widget.foodIndex].isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.012),
              Text(
                food[widget.foodIndex].name,
                style: Theme.of(context).textTheme.labelMedium,
              ),
              SizedBox(height: size.height * 0.005),
              Text(
                '\$${food[widget.foodIndex].price}',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: Theme.of(context).primaryColor,
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
