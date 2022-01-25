import 'package:flutter/material.dart';
import 'package:recipies/utils/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String text, Function()? onTap) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(
        text,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.bottomRight,
            child: const Text('Lets cook',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900)),
          ),
          const SizedBox(height: 20),
          _createItem(Icons.restaurant, 'Meals',
              () => Navigator.of(context).pushReplacementNamed(AppRoutes.HOME)),
          _createItem(
              Icons.settings,
              'Settings',
              () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.SETTINGS))
        ],
      ),
    );
  }
}
