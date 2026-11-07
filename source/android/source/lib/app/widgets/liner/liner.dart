// Liner global widget

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';



class Liner extends StatelessWidget {

  final String text;


  const Liner (
    this.text,
    {
      super.key
    }
  );


  @override Widget build (BuildContext context) {

    return (

      Stack (
        alignment: Alignment.centerLeft,
        children: [
          Container (
            width: double.infinity,
            height: 2,
            color: context.colors.line
          ),
          Transform.translate (
            offset: const Offset (38, -2),
            child: Container (
              height: 38,
              padding: const EdgeInsets.symmetric (
                horizontal: 8
              ),
              color: context.colors.back,
              child: Center (
                widthFactor: 1,
                child: Text (
                  text,
                  style: TextStyle (
                    fontFamily: context.fonts.archivo,
                    fontWeight: FontWeight.w700,
                    fontSize: 25,
                    color: context.colors.lineText
                  )
                )
              )
            )
          )
        ]
      )

    );

  }

}