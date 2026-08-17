// Connections page - Body - Connections list - Connection - Country - Flag

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/themes/themes.dart';



class Flag extends StatelessWidget {

  final String name;


  const Flag ({
    super.key,
    required String this.name
  });


  @override Widget build (BuildContext context) {

    final picturePath = ['netherlands', 'finland', 'germany'].contains (name) ? 'assets/pictures/theme_green_dark/icons/flag_$name.svg' : 'assets/pictures/theme_green_dark/icons/flag_netherlands.svg';


    return (

      Container (
        width: 42,
        height: 42,
        padding: EdgeInsets.all (2.5),
        decoration: BoxDecoration (
          border: Border.all (
            color: context.colors.circlesBorder,
            width: 1.75
          ),
          shape: BoxShape.circle,
          color: Colors.black
        ),
        child: ClipOval (
          child: SvgPicture.asset (picturePath)
        ),
        clipBehavior: Clip.antiAlias
      )

    );

  }

}