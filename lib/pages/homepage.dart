import 'package:flutter/material.dart';
import 'package:food_delivery/models/food_item_model.dart';
import 'package:food_delivery/widgets/food_item.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Starvy Meal'),
        backgroundColor: Colors.grey[100],
      ),
      drawer: const Drawer(child: Center(child: Text('I am in the drawer'))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                'assets/images/Orange Modern Special Sale Food Banner.png',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 32.0),
            Expanded(
              child: GridView.builder(
                itemCount: food.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => FoodItem(food: food[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
