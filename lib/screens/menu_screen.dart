
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pizza Store'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            buildMenuCard(
              context,
              'Vegetable Pizza',
              '/vegetable',
            ),
            buildMenuCard(
              context,
              'Cheese Pizza',
              '/cheese',
            ),
            buildMenuCard(
              context,
              'Fries',
              '/fries',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuCard(
    BuildContext context,
    String title,
    String route,
  ) {
    return Card(
      color: Colors.orange.shade200,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
