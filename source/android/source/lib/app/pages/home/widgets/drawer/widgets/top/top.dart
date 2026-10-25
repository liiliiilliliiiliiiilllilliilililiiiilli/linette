// Home page - Drawer - Top

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';
import 'package:linette/app/modules/texts/texts.dart';



class Top extends StatelessWidget {

  const Top ({
    super.key
  });


  @override build (BuildContext context) {

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
          context.texts.pageHomeDrawerTop,
          style: TextStyle (
            fontFamily: context.fonts.archivo,
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: context.colors.title
          )
        )
      )

    );

  }

}