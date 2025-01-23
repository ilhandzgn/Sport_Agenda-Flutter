//burada temalara+renkler yazılacak
// ignore: unused_import
// ignore_for_file: depend_on_referenced_packages

// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

// ignore: constant_identifier_names
const colors = {
  "primary": Color.fromARGB(255, 255, 153, 0),
  "onPrimary": Color.fromARGB(255, 41, 133, 156),
  "secondary": Color.fromARGB(255, 252, 252, 252),
  "onSecondary": Color.fromARGB(255, 73, 69, 69),
  "surface": Color.fromARGB(255, 252, 252, 252),
  "onsurface": Color.fromARGB(255, 252, 252, 252),
  "error": Colors.red,
};

// ignore: constant_identifier_names
const dark_colors = {
  "primary": Color.fromARGB(255, 0, 0, 0),
  "onPrimary": Color.fromARGB(255, 255, 153, 0),
  "secondary": Color.fromARGB(255, 0, 0, 0),
  "onSecondary": Color.fromARGB(255, 0, 0, 0),
  "surface": Color.fromARGB(255, 0, 0, 0),
  "onsurface": Color.fromARGB(255, 0, 0, 0),
  "error": Colors.red,
};
final darkTheme = ThemeData(
  brightness: Brightness.dark,
);

final lightTheme = ThemeData(
  brightness: Brightness.light,
);
