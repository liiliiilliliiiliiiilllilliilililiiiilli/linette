// Arsenal window - Content - Title

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';



class TitleComponent extends HookWidget {

  final String text;
  final bool state;


  const TitleComponent (
    this.text, {
    super.key,
    required this.state
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> state = useState (false);


    void onChanged (bool change) {

      state.value = !state.value;

    }


    return (

      Row (
        children: [
          Text (
            text,
            style: TextStyle (
              fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w600,
              fontSize: 17,
              color: context.colors.windowBodyTitle
            )
          ),
          Switch (
            value: state.value,
            onChanged: onChanged
          )
        ]
      )

    );

  }

}