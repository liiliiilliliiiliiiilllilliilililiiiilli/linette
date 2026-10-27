// Window global widget

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/top/top.dart';
import 'widgets/body/body.dart';
import 'widgets/bottom/bottom.dart';



class Window extends StatelessWidget {

  final double width;
  final bool? isExpanded;
  final String title;
  final Widget body;
  final String action;


  const Window ({
    required this.width,
    this.isExpanded = false,
    required this.title,
    required this.body,
    required this.action,
    super.key
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
                  color: context.colors.windowShadow,
                  offset: const Offset (0, 10),
                  blurRadius: 12,
                  spreadRadius: 5
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
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TopComponent (
                        title: title
                      ),
                      isExpanded != null ?
                        BodyComponent (
                          isExpanded: isExpanded!,
                          child: body
                        )
                      :
                        BodyComponent (
                          isExpanded: false,
                          child: body
                        )
                      ,
                      BottomComponent (
                        action: action
                      )
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