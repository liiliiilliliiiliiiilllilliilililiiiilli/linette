// Window global widget - Body - Action - Choice activity

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'widgets/menu/menu.dart';
import 'widgets/menu/widgets/choice/choice.dart';



class ChoiceActivity extends HookWidget {

  final String text;
  final OverlayPortalController controller;
  final List <Choice> choices;


  const ChoiceActivity (
    this.text, {
    super.key,
    required this.controller,
    required this.choices
  });


  @override Widget build (BuildContext context) {

    final LayerLink layerLink = useMemoized (() => LayerLink ());


    return (

      CompositedTransformTarget (
        link: layerLink,
        child: OverlayPortal (
          controller: controller,
          overlayChildBuilder: (BuildContext context) {
            return (
              Menu (
                controller: controller,
                choices: choices,
                layerLink: layerLink
              )
            );
          },
          child: Row (
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            children: [
              Text (
                text,
                style: TextStyle (
                  fontWeight: FontWeight.w500,
                  fontSize: 15.5,
                  height: 1,
                  color: context.colors.windowBodyActionRegular
                )
              ),
              SvgPicture.asset (
                context.icons.windowBodyActionChoice,
                width: 8,
                height: 8,
                colorFilter: ColorFilter.mode (
                  context.colors.windowBodyActionRegular,
                  BlendMode.srcIn
                )
              )
            ]
          )
        )
      )

    );

  }

}