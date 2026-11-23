// Home page - Body - Main - States

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'widgets/controller/controller.dart';
import 'widgets/info/info.dart';



class States extends HookWidget {

  const States ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isActive = useState (true);


    return (

      (isActive.value) ? (
        const Controller ()
      ) : (
        const Info ()
      )

    );

  }

}