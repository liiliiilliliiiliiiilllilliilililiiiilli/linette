// Wallet window - Table

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'widgets/stata/stata.dart';
import 'widgets/separator/separator.dart';
import 'widgets/separator/model/type/type.dart';



class TableComponent extends StatelessWidget {

  final TableStata topLeft;
  final TableStata topRight;
  final TableStata bottom;


  const TableComponent ({
    super.key,
    required this.topLeft,
    required this.topRight,
    required this.bottom
  });


  @override Widget build (BuildContext context) {

    return (

      Container (
        padding: const EdgeInsets.all (16),
        decoration: BoxDecoration (
          border: Border.all (
            width: 2,
            color: context.colors.windowBodyTableBorder,
          ),
          borderRadius: BorderRadius.circular (24)
        ),
        child: Column (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            IntrinsicHeight (
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded (
                    child: topLeft
                  ),
                  const Separator (SeparatorType.vertical),
                  Expanded (
                    child: topRight
                  )
                ]
              )
            ),
            const Separator (SeparatorType.horizontal),
            bottom
          ]
        )
      )

    );

  }

}