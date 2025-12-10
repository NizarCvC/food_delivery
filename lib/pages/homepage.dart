import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Starvy Meal'),
        backgroundColor: Colors.white,
      ),
      drawer: const Drawer(child: Center(child: Text('I am in the drawer'))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Image.asset(
                'assets/images/Orange Modern Special Sale Food Banner.png',
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Column(
                      children: [
                        Placeholder(fallbackHeight: 120),
                        Text('Burger'),
                        Text('\$20'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Column(
                      children: [
                        Placeholder(fallbackHeight: 120),
                        Text('Burger'),
                        Text('\$20'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Column(
                      children: [
                        Placeholder(fallbackHeight: 120),
                        Text('Burger'),
                        Text('\$20'),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey),
                    child: Column(
                      children: [
                        Placeholder(fallbackHeight: 120),
                        Text('Burger'),
                        Text('\$20'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
