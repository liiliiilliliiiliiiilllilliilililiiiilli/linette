// Home page - Drawer - Top

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Top extends StatelessWidget {

  const Top ({super.key});


  @override build (BuildContext context) {

    final text = T.of(context).options;


    return (

      Container (
        alignment: Alignment.bottomLeft,
        padding: const EdgeInsets.only (
          left: 30,
          bottom: 20
        ),
        height: 34 + 56 + 10 - 0.5,
        decoration: BoxDecoration (
          color: context.colors.appBarBack,
          border: Border (
            bottom: BorderSide (
              width: 2,
              color: context.colors.appBarBorder
            )
          )
        ),
        child: Text (
          text,
          style: TextStyle (
            fontFamily: 'Archivo',
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: context.colors.textTitle
          )
        )
      )

    );

  }

}