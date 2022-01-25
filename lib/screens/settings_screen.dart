import 'package:flutter/material.dart';
import 'package:recipies/components/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: MainDrawer(),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
