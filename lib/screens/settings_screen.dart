import 'package:flutter/material.dart';
import 'package:recipies/components/main_drawer.dart';
import 'package:recipies/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings settings) onSettingsChanged;

  const SettingsScreen(this.onSettingsChanged);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Settings settings = Settings();

  Widget _createSwitch(
      String title, String subtitle, bool value, Function(bool) onChanged) {
    return SwitchListTile.adaptive(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        onChanged: (value) {
          onChanged(value);
          widget.onSettingsChanged(settings);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        drawer: MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
                child: ListView(
              children: [
                _createSwitch(
                  'Gluten-free',
                  'Only include gluten-free recipes',
                  settings.isGlutenFree,
                  (newValue) {
                    setState(() {
                      settings.isGlutenFree = newValue;
                    });
                  },
                ),
                _createSwitch(
                  'Lactose-free',
                  'Only include lactose-free recipes',
                  settings.isLactoseFree,
                  (newValue) {
                    setState(() {
                      settings.isLactoseFree = newValue;
                    });
                  },
                ),
                _createSwitch(
                  'Vegetarian',
                  'Only include vegetarian recipes',
                  settings.isVegetarian,
                  (newValue) {
                    setState(() {
                      settings.isVegetarian = newValue;
                    });
                  },
                ),
                _createSwitch(
                  'Vegan',
                  'Only include vegan recipes',
                  settings.isVegan,
                  (newValue) {
                    setState(() {
                      settings.isVegan = newValue;
                    });
                  },
                ),
              ],
            ))
          ],
        ));
  }
}
