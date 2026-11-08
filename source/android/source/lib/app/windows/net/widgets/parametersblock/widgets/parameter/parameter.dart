// Net window - Parameters block - Parameter

import 'package:flutter/material.dart';
import 'package:linette/app/modules/colors/colors.dart';



class ParameterComponent extends StatelessWidget {

  final String stata;
  final String value;


  const ParameterComponent ({
    super.key,
    required this.stata,
    required this.value
  });


  @override Widget build (BuildContext context) {

    return (

      Row (
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded (
            child: Text (
              stata,
              style: TextStyle (
                fontWeight: FontWeight.w400,
                color: context.colors.windowMainStata,
                overflow: TextOverflow.ellipsis
              )
            )
          ),
          Text (
            value,
            style: TextStyle (
              fontWeight: FontWeight.w500,
              color: context.colors.windowMainStataValue,
              overflow: TextOverflow.ellipsis
            )
          )
        ]
      )

    );

  }

}