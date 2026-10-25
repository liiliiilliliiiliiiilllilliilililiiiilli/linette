// Connections page - Body - Liner

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Liner extends StatelessWidget {

  final int onlineNum;


  const Liner ({
    super.key,
    required this.onlineNum
  });


  @override Widget build (BuildContext context) {

    return (

      Stack (
        alignment: Alignment.centerLeft,
        children: [
          Container (
            height: 2,
            color: context.colors.line,
            width: double.infinity
          ),
          Transform.translate (
            offset: const Offset (38, -2),
            child: Container (
              color: context.colors.back,
              padding: const EdgeInsets.only (
                left: 8,
                right: 8
              ),
              child: Text (
                context.texts.pageConnectionsBodyLiner (onlineNum),
                style: TextStyle (
                  fontFamily: context.fonts.archivo,
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: context.colors.lineText
                )
              )
            )
          )
        ]
      )

    );

  }

}