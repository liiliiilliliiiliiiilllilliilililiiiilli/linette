// Text button global widget - Icons model

import 'package:flutter/widgets.dart';



class TextButtonIcons {

  final TextButtonIcon? left;
  final TextButtonIcon? right;


  const TextButtonIcons ({
    this.left,
    this.right
  });

}



class TextButtonIcon {

  final String asset;
  final double size;
  final Offset? offset;
  final double? angle;


  const TextButtonIcon (
    this.asset,
    {
      this.size = 20,
      this.offset,
      this.angle
    }
  );

}