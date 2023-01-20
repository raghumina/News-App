import 'package:flutter/material.dart';
import 'package:flutter_news_app/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_news_app/services/dark_theme_prefs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
          child: SwitchListTile(
        title: const Text('Theme'),
        secondary: Icon(themeState.getDarkTheme
            ? Icons.dark_mode_outlined
            : Icons.light_mode_outlined),
        onChanged: (bool value) {
          themeState.setDarkTheme = value;
        },
        value: themeState.getDarkTheme,
      )),
    );
  }
}
