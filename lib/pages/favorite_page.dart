import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final favoriteFood = food.where((e) => e.isFavorite == true).toList();
    final size = MediaQuery.of(context).size;

    if (favoriteFood.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.14),
            Image.asset(
              'assets/images/leaf.png',
              height: size.height * 0.3,
              width: size.width * 0.6,
              fit: BoxFit.contain,
            ),
            const Text(
              'No favorite items found!',
              style: TextStyle(fontSize: 22),
            ),
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: favoriteFood.length,
          itemBuilder: (context, index) => Card(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      favoriteFood[index].imageUrl,
                      height: size.height * 0.065,
                      width: size.width * 0.25,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(width: size.width * 0.04),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          favoriteFood[index].name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: size.height * 0.006),
                        Text(
                          '\$ ${favoriteFood[index].price}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      final targetedItem = favoriteFood[index];
                      int targetedIndex = food.indexOf(targetedItem);
                      setState(() {
                        food[targetedIndex] = food[targetedIndex].copyWith(
                          isFavorite: false,
                        );
                        favoriteFood.remove(targetedItem);
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
  }
}
