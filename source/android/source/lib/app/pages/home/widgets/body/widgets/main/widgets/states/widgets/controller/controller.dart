// Home page - Body - Main - States - Controller

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/dot/dot.dart';



class Controller extends StatelessWidget {

  const Controller ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      IntrinsicWidth (
        child: Container (
          alignment: Alignment.center,
          height: 25,
          padding: const EdgeInsets.all (4),
          decoration: BoxDecoration (
            border: Border.all (
              width: 2,
              color: context.colors.controllerBorder
            ),
            borderRadius: BorderRadius.circular (100),
            color: context.colors.controllerBack
          ),
          child: Row (
            mainAxisSize: MainAxisSize.min,
            spacing: 4,
            children: [
              Dot (
                isActive: true,
                colorBorder: context.colors.controllerIndicatorBypassingBorder,
                colorBackActive: context.colors.controllerIndicatorBypassingActiveBack,
                colorBackNotActive: context.colors.controllerIndicatorBypassingNotActiveBack
              ),
              Dot (
                isActive: true,
                colorBorder: context.colors.controllerIndicatorPlatformBorder,
                colorBackActive: context.colors.controllerIndicatorPlatformActiveBack,
                colorBackNotActive: context.colors.controllerIndicatorPlatformNotActiveBack
              ),
              Dot (
                isActive: true,
                colorBorder: context.colors.controllerIndicatorExchangeBorder,
                colorBackActive: context.colors.controllerIndicatorExchangeActiveBack,
                colorBackNotActive: context.colors.controllerIndicatorExchangeNotActiveBack
              ),
              Dot (
                isActive: true,
                colorBorder: context.colors.controllerIndicatorDecentralizationBorder,
                colorBackActive: context.colors.controllerIndicatorDecentralizationActiveBack,
                colorBackNotActive: context.colors.controllerIndicatorDecentralizationNotActiveBack
              ),
              Dot (
                isActive: true,
                colorBorder: context.colors.controllerIndicatorSpamBorder,
                colorBackActive: context.colors.controllerIndicatorSpamActiveBack,
                colorBackNotActive: context.colors.controllerIndicatorSpamNotActiveBack
              )
            ]
          )
        )
      )

    );

  }

}