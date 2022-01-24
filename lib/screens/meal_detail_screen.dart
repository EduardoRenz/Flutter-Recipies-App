import 'package:flutter/material.dart';
import 'package:recipies/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Meal meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Meal Detail'),
      ),
      body: Center(
        child: Text(meal.title),
      ),
    );
  }
}
