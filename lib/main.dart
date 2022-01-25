import 'package:flutter/material.dart';
import 'package:recipies/screens/meal_detail_screen.dart';
import 'package:recipies/screens/settings_screen.dart';
import 'package:recipies/screens/tabs_screen.dart';
import 'package:recipies/utils/app_routes.dart';
import 'screens/categories_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.redAccent,
        fontFamily: 'RaleWay',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
                headline6: const TextStyle(
              fontFamily: 'RobotoCondensed',
              fontSize: 20,
            )),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => const TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        AppRoutes.SETTINGS: (ctx) => SettingsScreen(),
      },
    );
  }
}
