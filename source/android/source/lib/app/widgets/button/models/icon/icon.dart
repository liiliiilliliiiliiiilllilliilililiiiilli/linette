// Button global widget - Icon model

import 'package:flutter/widgets.dart';



class ButtonIcon {

  final String asset;
  final double size;
  final Offset offset;
  final double angle;


  const ButtonIcon (
    this.asset, {
    this.size = 12.5,
    this.offset = const Offset (0, 0),
    this.angle = 0
  });

}