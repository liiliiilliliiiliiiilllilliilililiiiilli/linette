// Home page - Drawer - Main

import 'package:flutter/material.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'widgets/languageoption/languageoption.dart';
import 'widgets/separator/separator.dart';
import 'widgets/feedbackoption/feedbackoption.dart';



class Main extends StatelessWidget {

  const Main ({super.key});


  @override build (BuildContext context) {

    return (

      Expanded (
        child: Container (
          padding: const EdgeInsets.fromLTRB (20, 12, 20, 12),
          decoration: BoxDecoration (
            color: context.colors.drawerBack
          ),
          child: const Column (
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