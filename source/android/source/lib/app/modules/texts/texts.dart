// Texts module

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';



extension AppLocalizationsBuildContext on BuildContext {

  T get texts => T.of (this);

}