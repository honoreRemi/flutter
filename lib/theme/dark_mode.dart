import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

final ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade700,
    onBackground: Colors.white, // Couleur du texte sur le fond
    onPrimary: Colors.white, // Couleur du texte sur le primary
    onSecondary: Colors.white, // Couleur du texte sur le secondary
  ),
  textTheme: ThemeData.dark().textTheme.apply(
    bodyColor: Colors.grey[300],
    displayColor: Colors.white,
  ),
);