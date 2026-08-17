// Connections page - Body

import 'package:flutter/material.dart';
import 'components/liner/liner.dart';
import 'components/connectionslist/connectionslist.dart';



class BodyComponent extends StatelessWidget {

  const BodyComponent ({super.key});


  @override Widget build (BuildContext context) {

    return (

      Container (
        color: Colors.black,
        padding: EdgeInsets.only (top: 30),
        child: Column (
          spacing: 16,
          children: [
            Liner (
              onlineNum: 3
            ),
            ConnectionsList (
              // connections: [
              //   Connection (
              //     name: 'netherlands',
              //     isChosen: true,
              //     isAvailable: false
              //   ),
              //   Connection (
              //     name: 'finland',
              //     isChosen: false,
              //     isAvailable: false
              //   ),
              //   Connection (
              //     name: 'germany',
              //     isChosen: false,
              //     isAvailable: false
              //   )
              // ]
            )
          ]
        )
      )

    );

  }

}



// class ConnectionModule {

//   final String name;
//   final bool isChosen;
//   final bool isAvailable;


//   Connection ({
//     required this.name,
//     required this.isChosen,
//     required this.isAvailable
//   });

// }