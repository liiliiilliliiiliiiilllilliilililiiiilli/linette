// Texts module

import 'package:flutter/material.dart';
import 'package:linette/app/localizations/generated/l10n.dart';



extension AppTextsExtension on BuildContext {

  Texts get texts => Texts.of (this);

}