// Connections page - Body - Liner

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Liner extends StatelessWidget {

  final int onlineNum;


  const Liner ({
    super.key,
    required this.onlineNum
  });


  @override Widget build (BuildContext context) {

    final String text = T.of(context).numOnline(onlineNum);


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
                text,
                style: TextStyle (
                  fontFamily: 'Archivo',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                  color: context.colors.textLine
                )
              )
            )
          )
        ]
      )

    );

  }

}