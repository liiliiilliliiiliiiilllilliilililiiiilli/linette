// Fonts module

import 'package:flutter/material.dart';



class AppFonts {

  const AppFonts ();


  String get archivo => 'Archivo';
  String get fredoka => 'Fredoka';

}



extension AppFontsExtension on BuildContext {

  AppFonts get fonts => const AppFonts ();

}