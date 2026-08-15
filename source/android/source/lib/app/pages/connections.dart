// Connections page

import 'package:flutter/material.dart';



class Connections extends StatelessWidget {

  const Connections ({super.key});


  AppBar AppBarComponent () {

    return (

      AppBar (
        title: Text (
          'Выберите сервер'
        )
      )

    );

  }


  Container BodyComponent () {

    return (

      Container (
        child: Center (
          child: Text (
            'Список с серверами на подключение!!!!!',
            style: TextStyle (
              color: Color (0xfff2f2f2)
            )
          )
        )
      )
    );

  }


  @override build (BuildContext context) {

    return (

      Scaffold (
        appBar: AppBarComponent (),
        body: BodyComponent ()
      )

    );

  }

}