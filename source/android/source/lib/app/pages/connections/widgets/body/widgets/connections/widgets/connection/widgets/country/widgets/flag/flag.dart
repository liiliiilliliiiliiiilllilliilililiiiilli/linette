// Connections page - Body - Connections list - Connection - Country - Flag

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/theme/colors/colors.dart';



class Flag extends StatelessWidget {

  final String flag;


  const Flag ({
    super.key,
    required this.flag
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        width: 42,
        height: 42,
        padding: const EdgeInsets.all (2.5),
        decoration: BoxDecoration (
          shape: BoxShape.circle,
          border: Border.all (
            width: 1.75,
            color: context.colors.circlesBorder
          ),
          color: context.colors.circlesBack
        ),
        clipBehavior: Clip.antiAlias,
        child: ClipOval (
          child: SvgPicture.asset (flag)
        )
      )

    );

  }

}