// App

import 'package:flutter/material.dart';
import 'package:linette/app/pages/home.dart';



class App extends StatelessWidget {

  const App ({super.key});


  @override build (BuildContext context) {

    return (

      MaterialApp (
        debugShowCheckedModeBanner: false,
        home: Home ()
      )

    );

  }

}