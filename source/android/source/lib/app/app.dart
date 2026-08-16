// App (root component)

import 'package:flutter/material.dart';
import 'pages/home/home.dart';



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