// home_screen.dart
import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  // Detailed recipe data
  final List<Map<String, dynamic>> recipes = [
    {
      'name': 'Spaghetti Carbonara',
      'ingredients': [
        '400g Spaghetti',
        '150g Pancetta or Guanciale',
        '2 large Eggs',
        '1 large Egg Yolk',
        '100g Pecorino Romano cheese',
        '50g Parmesan cheese',
        '2 cloves Garlic (optional)',
        'Salt and Black Pepper',
        'Olive Oil',
      ],
      'instructions': [
        '1. Cook the spaghetti in a large pot of salted water until al dente.',
        '2. In a pan, fry the pancetta or guanciale until crispy. Optionally add garlic.',
        '3. Whisk the eggs, egg yolk, Pecorino, Parmesan, and pepper in a bowl.',
        '4. Toss the hot spaghetti with the pancetta and remove the pan from heat.',
        '5. Quickly stir in the egg mixture to make a creamy sauce. Add pasta water if needed.',
        '6. Serve immediately with extra cheese and black pepper.'
      ]
    },
    {
      'name': 'Chicken Curry',
      'ingredients': [
        '500g Chicken',
        '1 Onion',
        '3 cloves Garlic',
        '1 tbsp Ginger (minced)',
        '2 tbsp Curry Powder',
        '400ml Coconut Milk',
        'Salt and Pepper',
        '1 tbsp Vegetable Oil',
        'Fresh Coriander (for garnish)',
      ],
      'instructions': [
        '1. Heat oil in a pan and sauté the onion, garlic, and ginger until soft.',
        '2. Add the chicken pieces and cook until browned.',
        '3. Stir in the curry powder and cook for 2 minutes.',
        '4. Pour in the coconut milk and simmer for 15-20 minutes.',
        '5. Season with salt and pepper, and garnish with fresh coriander before serving.'
      ]
    },
    {
      'name': 'Grilled Cheese',
      'ingredients': [
        '2 slices of Bread',
        '2 slices of Cheddar Cheese',
        'Butter',
      ],
      'instructions': [
        '1. Butter one side of each bread slice.',
        '2. Place a slice of cheese between the non-buttered sides of the bread.',
        '3. Heat a skillet over medium heat and place the sandwich in the skillet.',
        '4. Cook until the bread is golden brown and the cheese is melted, flipping halfway.',
        '5. Serve hot.'
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe List'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']),
            onTap: () {
              // Navigate to DetailsScreen with the recipe details
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipes[index]['name'],
                    ingredients: recipes[index]['ingredients'],
                    instructions: recipes[index]['instructions'],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
