import 'package:flutter/material.dart';

//---This to switch theme from Switch button----
class ThemeProvider extends ChangeNotifier {
  //-----Store the theme of our app--
  ThemeMode themeMode = ThemeMode.dark;

  //----If theme mode is equal to dark then we return True----
  //-----isDarkMode--is the field we will use in our switch---
  bool get isDarkMode => themeMode == ThemeMode.dark;

  //---implement ToggleTheme function----
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;

    //---notify material app to update UI----
    notifyListeners();
  }
}

//---------------Themes settings here-----------
class MyThemes {
  //-------------DARK THEME SETTINGS----
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Color(0xFF191a2c),
      brightness: Brightness.dark,
      fontFamily: 'poppins',
      listTileTheme: const ListTileThemeData(tileColor: Color(0xFF191a2c)),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: {TargetPlatform.android: ZoomPageTransitionsBuilder()})
      // colorScheme:  ColorScheme.dark(),
      );

  //-------------light THEME SETTINGS----
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      fontFamily: 'poppins',
      listTileTheme: const ListTileThemeData(tileColor: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
      pageTransitionsTheme: const PageTransitionsTheme(
          builders: {TargetPlatform.android: ZoomPageTransitionsBuilder()})
      //colorScheme:  ColorScheme.light(),
      );
}
