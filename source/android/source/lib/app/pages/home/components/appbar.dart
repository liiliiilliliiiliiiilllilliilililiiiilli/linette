// Home page - App bar

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



PreferredSize AppBarComponent () {

  GestureDetector LeftButtonComponent () {

    return (

      GestureDetector (
        onTap: () => {
          print ('Нажата кнопка открытия меню!')
        },
        child: Center (
          child: Container (
            width: 38,
            height: 38,
            padding: EdgeInsets.all (7.5),
            decoration: BoxDecoration (
              color: Color (0xff000000),
              border: Border.all (
                width: 3,
                color: Color (0xff202020)
              ),
              borderRadius: BorderRadius.all (Radius.circular (10))
            ),
            child: SvgPicture.asset ('assets/pictures/theme_green_dark/icons/menu.svg')
          )
        )
      )

    );

  }


  IntrinsicWidth TitleComponent () {

    return (

      IntrinsicWidth (
        child: Column (
          mainAxisSize: MainAxisSize.min,
          children: [
            Text (
              'OliveVPN',
              style: TextStyle (
                fontFamily: 'Fredoka',
                fontWeight: FontWeight.w600,
                fontSize: 25,
                color: Color (0xfff2f2f2)
              )
            ),
            Container (
              height: 2.75,
              decoration: BoxDecoration (
                color: Color (0xff8b9e80),
                borderRadius: BorderRadius.circular (100)
              )
            )
          ]
        )
      )

    );

  }


  GestureDetector RightButtonComponent () {

    return (

      GestureDetector (
        onTap: () => {
          print ('Нажата кнопка смены темы!')
        },
        child: Center (
          child: Container (
            width: 38,
            height: 38,
            padding: EdgeInsets.all (7.5),
            decoration: BoxDecoration (
              color: Color (0xff000000),
              border: Border.all (
                width: 3,
                color: Color (0xff202020)
              ),
              borderRadius: BorderRadius.all (Radius.circular (100))
            ),
            child: SvgPicture.asset ('assets/pictures/theme_green_dark/icons/sun.svg')
          )
        )
      )

    );

  }


  return PreferredSize (
    preferredSize: Size.fromHeight (kToolbarHeight + 10),
    child: Padding (
      padding: EdgeInsets.only (top: 5),
      child: AppBar (
        leading: Padding (
          padding: EdgeInsetsGeometry.only (left: 16),
          child: LeftButtonComponent ()
        ),
        automaticallyImplyLeading: false,
        leadingWidth: 56 + 16,
        title: TitleComponent (),
        centerTitle: true,
        actions: [
          RightButtonComponent ()
        ],
        actionsPadding: EdgeInsetsGeometry.only (right: 8 + 16),
        backgroundColor: Color (0xff070707),
        bottom: PreferredSize (
          preferredSize: Size.fromHeight (2),
          child: Container (
            height: 2,
            color: Color (0xff171717)
          )
        )
      )
    )
  );

}