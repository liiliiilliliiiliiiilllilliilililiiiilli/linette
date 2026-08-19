// Home page - Body

import 'package:flutter/material.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/main/main.dart';
import 'components/bottom/bottom.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Container (
        decoration: BoxDecoration (
          image: DecorationImage (
            image: AssetImage (context.icons.background),
            fit: BoxFit.cover
          ),
          color: context.colors.black
        ),
        child: Column (
          children: [
            Main (),
            Bottom ()
          ]
        )
      )
    );

  }

}