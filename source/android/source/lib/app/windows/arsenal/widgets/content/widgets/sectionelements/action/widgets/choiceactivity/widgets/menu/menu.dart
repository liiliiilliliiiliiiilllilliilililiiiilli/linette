// Arsenal window - Content - Action section element - Choice activity - Menu

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/choice/choice.dart';
import 'widgets/separator/separator.dart';



class Menu extends StatelessWidget {

  final OverlayPortalController controller;
  final List <Choice> choices;
  final LayerLink layerLink;


  const Menu ({
    super.key,
    required this.controller,
    required this.choices,
    required this.layerLink
  });


  @override Widget build (BuildContext context) {

    return (

      PopScope (
        canPop: false,
        onPopInvokedWithResult: (bool didPop, dynamic result) {
          if (didPop) return;
          controller.hide ();
        },
        child: Stack (
          children: [
            Positioned.fill (
              child: GestureDetector (
                onTap: controller.hide,
                behavior: HitTestBehavior.opaque,
                child: Container (
                  color: context.colors.menuBarrier
                )
              )
            ),
            CompositedTransformFollower (
              link: layerLink,
              showWhenUnlinked: false,
              targetAnchor: Alignment.bottomRight,
              followerAnchor: Alignment.topRight,
              offset: const Offset (0, 10),
              child: Material (
                color: Colors.transparent,
                child: Container (
                  decoration: BoxDecoration (
                    border: Border.all (
                      width: 2,
                      color: context.colors.windowBodyActionChoiceActivityBorder
                    ),
                    borderRadius: const BorderRadius.all (Radius.circular (8)),
                    color: context.colors.windowBodyActionChoiceActivityBack,
                    boxShadow: [
                      BoxShadow (
                        blurRadius: 12,
                        spreadRadius: 5,
                        offset: const Offset (0, 10),
                        color: context.colors.windowShadow
                      )
                    ]
                  ),
                  child: Padding (
                    padding: const EdgeInsets.all (14),
                    child: IntrinsicWidth (
                      child: Column (
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        spacing: 14,
                        children: [
                          for (int index = 0; index < choices.length; index ++) ... [
                            choices [index],
                            if (index < choices.length - 1) const Separator ()
                          ]
                        ]
                      )
                    )
                  )
                )
              )
            )
          ]
        )
      )

    );

  }

}