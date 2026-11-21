// Link global widget - Icon model

import 'package:flutter/widgets.dart';



class LinkIcon {

  final String asset;
  final double size;
  final Offset offset;
  final double angle;


  const LinkIcon (
    this.asset, {
    this.size = 15.5,
    this.offset = const Offset (0, 0),
    this.angle = 0
  });

}