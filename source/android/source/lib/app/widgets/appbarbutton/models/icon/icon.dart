// App bar button global widget - Icon model

import 'package:flutter/widgets.dart';



class AppBarButtonIcon {

  final String asset;
  final double size;
  final Offset? offset;
  final double? angle;


  const AppBarButtonIcon (
    this.asset,
    {
      this.size = 12.5,
      this.offset,
      this.angle
    }
  );

}