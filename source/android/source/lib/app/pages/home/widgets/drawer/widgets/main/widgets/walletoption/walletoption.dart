// Home page - Drawer - Main - Wallet option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/draweroption/draweroption.dart';
import 'package:linette/app/windows/wallet/wallet.dart';



class WalletOption extends HookWidget {

  const WalletOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      DrawerOption (
        iconLeft: context.icons.wallet,
        text: context.texts.pageHomeDrawerCenterWallet,
        window: const WalletWindow ()
      )

    );

  }

}