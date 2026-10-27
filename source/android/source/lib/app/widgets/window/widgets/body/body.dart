// Window global widget - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';



class BodyComponent extends HookWidget {

  final bool isExpanded;
  final Widget child;


  const BodyComponent ({
    required this.isExpanded,
    required this.child,
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      !isExpanded ?

        Container (
          padding: const EdgeInsets.symmetric (
            horizontal: 20 - 4
          ),
          child: child
        )

      :

        Expanded (
          child: Container (
            padding: const EdgeInsets.symmetric (
              horizontal: 20 - 4
            ),
            child: child
          )
        )

    );

  }

}