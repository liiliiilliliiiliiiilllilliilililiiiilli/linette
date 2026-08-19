// Home page - Drawer - Bottom

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/theme/colors.dart';



class Bottom extends HookWidget {

  const Bottom ({super.key});


  @override build (BuildContext context) {

    final isChecked = useState (false);


    void handleTap () {

      print ('Нажата кнопка автоматического подключения к VPN!');

      isChecked.value = !isChecked.value;

    }


    return (

      GestureDetector (
        onTap: handleTap,
        behavior: HitTestBehavior.opaque,
        child: Container (
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.fromLTRB (20, 15, 20, 15),
          decoration: BoxDecoration (
            color: context.colors.barBack,
            border: Border (
              top: BorderSide (
                width: 2,
                color: context.colors.barBorder
              )
            )
          ),
          child: Row (
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded (
                child: Text (
                  softWrap: true,
                  'Подключение к VPN при запуске приложения',
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: context.colors.white
                  )
                )
              ),
              Checkbox (
                value: isChecked.value,
                onChanged: (context) => {},
                checkColor: context.colors.black,
                activeColor: context.colors.prime
              )
            ]
          )
        )
      )

    );

  }

}