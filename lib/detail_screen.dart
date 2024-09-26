
// details_screen.dart
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;
  final List<String> ingredients;
  final List<String> instructions;

  // Constructor to accept recipe data
  DetailsScreen({
    required this.recipeName,
    required this.ingredients,
    required this.instructions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ...ingredients.map((ingredient) => Text('• $ingredient')).toList(),
              SizedBox(height: 16),
              Text(
                'Instructions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ...instructions.map((instruction) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(instruction),
              )).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
