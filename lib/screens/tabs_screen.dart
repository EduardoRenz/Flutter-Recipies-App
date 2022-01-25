import 'package:flutter/material.dart';
import 'package:recipies/screens/categories_screen.dart';
import 'package:recipies/screens/favorite_screen.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Lets cook'),
          bottom: const TabBar(
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.category), text: 'Categories'),
              Tab(icon: Icon(Icons.star), text: 'Favorites'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            const CategoriesScreen(),
            FavoriteScreen(),
          ],
        ),
      ),
    );
  }
}
