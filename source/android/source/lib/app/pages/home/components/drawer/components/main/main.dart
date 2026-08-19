// Home page - Drawer - Main

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors.dart';
import 'components/languageoption/languageoption.dart';
import 'components/separator/separator.dart';
import 'components/feedbackoption/feedbackoption.dart';



class Main extends StatelessWidget {

  const Main ({super.key});


  @override build (BuildContext context) {

    return (

      Expanded (
        child:
        Container (
          padding: EdgeInsets.fromLTRB (20, 12, 20, 12),
          decoration: BoxDecoration (
            color: context.colors.drawerBack
          ),
          child: Column (
            spacing: 10,
            children: [
              LanguageOption (),
              Separator (),
              FeedbackOption ()
            ]
          )
        )
      )

    );

  }

}