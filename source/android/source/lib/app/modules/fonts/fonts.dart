// Fonts module

import 'package:flutter/material.dart';



class ThemeFonts {

  const ThemeFonts ();


  String get archivo => 'Archivo';
  String get fredoka => 'Fredoka';

}



extension AppFontsBuildContext on BuildContext {

  ThemeFonts get fonts => const ThemeFonts ();

}