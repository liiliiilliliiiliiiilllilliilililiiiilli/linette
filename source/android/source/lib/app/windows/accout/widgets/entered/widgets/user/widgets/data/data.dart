// Accout window - Entered - User - Data

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/icons/icons.dart';



class Data extends StatelessWidget {

  const Data ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Column (
        children: [
          Row (
            children: [
              Text (''),
              SvgPicture.asset (context.icons.drawerOptionLeftAccount)
            ]
          ),
          Text ('')
        ]
      )

    );

  }

}