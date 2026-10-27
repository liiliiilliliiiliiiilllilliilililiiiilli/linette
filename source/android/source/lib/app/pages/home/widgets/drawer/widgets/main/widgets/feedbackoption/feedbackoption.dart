// Home page - Drawer - Main - Feedback option

import 'package:flutter/material.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/feedback/feedback.dart';



class FeedbackOption extends StatelessWidget {

  const FeedbackOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DrawerOption (
        iconLeft: context.icons.info,
        text: context.texts.pageHomeDrawerCenterFeedback,
        window: const FeedbackWindow ()
      )

    );

  }

}