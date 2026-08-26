// Connections page - App bar - Title

import 'package:flutter/material.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/colors/colors.dart';



class TitleComponent extends StatelessWidget {

  const TitleComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Transform.translate (
        offset: const Offset (-4, -1),
        child: Text (
          T.of(context).chooseServer,
          style: TextStyle (
            fontFamily: 'Fredoka',
            fontWeight: FontWeight.w600,
            fontSize: 25,
            color: context.colors.textTitle
          )
        )
      )

    );

  }

}