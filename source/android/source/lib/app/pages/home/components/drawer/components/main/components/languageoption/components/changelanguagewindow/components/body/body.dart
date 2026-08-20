// Home page - Drawer - Main - Language option - Change language window - Body

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors.dart';



class BodyComponent extends HookWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    final languages = [
      {
        'id': '1',
        'title': 'Русский',
        'subtitle': 'Русский'
      },
      {
        'id': '2',
        'title': 'Английский',
        'subtitle': 'English'
      },
      {
        'id': '3',
        'title': 'Китайский',
        'subtitle': '中国人'
      }
    ];


    final selectedValue = useState ('1');


    return (

      Container (
        padding: EdgeInsets.symmetric (
          horizontal: 20 - 4
        ),
        child: Stack (
          children: [
            SingleChildScrollView (
              child: Padding (
                padding: EdgeInsets.only (
                  top: 5
                ),
                child: Material (
                  type: MaterialType.transparency,
                  child: RadioGroup <String> (
                    groupValue: selectedValue.value,
                    onChanged: (value) => selectedValue.value = value!,
                    child: Column (
                      spacing: 0,
                      children: languages.map ((lang) =>
                        Container (
                          child: RadioListTile (
                            horizontalTitleGap: 5,
                            value: lang ['id']!,
                            contentPadding: EdgeInsets.zero,
                            activeColor: context.colors.prime,
                            title: Text (
                              lang ['title']!,
                              style: TextStyle (
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                color: context.colors.white
                              )
                            ),
                            subtitle: Text (
                              lang ['subtitle']!,
                              style: TextStyle (
                                fontFamily: 'Archivo',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: context.colors.grey
                              )
                            )
                          )
                        )
                      ).toList ()
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