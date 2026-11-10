// Window global widget

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/top/top.dart';
import 'widgets/body/body.dart';
import 'widgets/bottom/bottom.dart';



class Window extends StatelessWidget {

  final double width;
  final bool isExpanded;
  final String title;
  final Widget body;
  final String action;


  const Window ({
    super.key,
    required this.width,
    this.isExpanded = false,
    required this.title,
    required this.body,
    required this.action
  });


  @override Widget build (BuildContext context) {

    return (

      Material (
        type: MaterialType.transparency,
        child: Center (
          child: Container (
            decoration: BoxDecoration (
              boxShadow: [
                BoxShadow (
                  blurRadius: 12,
                  spreadRadius: 5,
                  offset: const Offset (0, 10),
                  color: context.colors.windowShadow
                )
              ]
            ),
            child: ClipRRect (
              borderRadius: BorderRadius.circular (8),
              child: ConstrainedBox (
                constraints: const BoxConstraints (
                  maxHeight: 500
                ),
                child: Container (
                  width: width,
                  color: context.colors.windowMainBack,
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TopComponent (title),
                      BodyComponent (
                        isExpanded: isExpanded,
                        child: body
                      )
                      ,
                      BottomComponent (action)
                    ]
                  )
                )
              )
            )
          )
        )
      )

    );

  }

}