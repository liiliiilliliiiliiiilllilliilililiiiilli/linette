// Home page - Drawer - Main

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/languageoption/languageoption.dart';
import 'widgets/feedbackoption/feedbackoption.dart';
import 'widgets/arsenaloption/arsenaloption.dart';
import 'widgets/netparametersoption/netparametersoption.dart';
import 'widgets/accoutoption/accoutoption.dart';
import 'widgets/walletoption/walletoption.dart';
import 'widgets/separator/separator.dart';



class Main extends StatelessWidget {

  const Main ({
    super.key
  });


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
              FeedbackOption (),
              Separator (),
              ArsenalOption (),
              NetParametersOption (),
              Separator (),
              AccoutOption (),
              WalletOption ()
            ]
          )
        )
      )

    );

  }

}