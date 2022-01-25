import 'package:flutter/material.dart';
import 'package:recipies/components/main_drawer.dart';
import 'package:recipies/models/settings.dart';

class SettingsScreen extends StatefulWidget {
  final Function(Settings settings) onSettingsChanged;
  final Settings settings;

  const SettingsScreen(this.onSettingsChanged, this.settings);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Widget _createSwitch(
      String title, String subtitle, bool value, Function(bool) onChanged) {
    return SwitchListTile.adaptive(
        title: Text(title),
        subtitle: Text(subtitle),
        value: value,
        onChanged: (value) {
          onChanged(value);
          widget.onSettingsChanged(widget.settings);
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
                  widget.settings.isGlutenFree,
                  (newValue) {
                    setState(() {
                      widget.settings.isGlutenFree = newValue;
                    });
                  },
                ),
                _createSwitch(
                  'Lactose-free',
                  'Only include lactose-free recipes',
                  widget.settings.isLactoseFree,
                  (newValue) {
                    setState(() {
                      widget.settings.isLactoseFree = newValue;
                    });
                  },
                ),
                _createSwitch(
                  'Vegetarian',
                  'Only include vegetarian recipes',
                  widget.settings.isVegetarian,
                  (newValue) {
                    setState(() {
                      widget.settings.isVegetarian = newValue;
                    });
                  },
                ),
                _createSwitch(
                  'Vegan',
                  'Only include vegan recipes',
                  widget.settings.isVegan,
                  (newValue) {
                    setState(() {
                      widget.settings.isVegan = newValue;
                    });
                  },
                ),
              ],
            ))
          ],
        ));
  }
}
