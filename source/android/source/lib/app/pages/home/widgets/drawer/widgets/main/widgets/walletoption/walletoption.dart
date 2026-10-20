// Home page - Drawer - Main - Wallet option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/icons/icons.dart';
import 'package:linette/app/theme/colors/colors.dart';
import 'package:linette/app/widgets/animatorpresser/animatorpresser.dart';
import 'widgets/walletwindow/walletwindow.dart';



class WalletOption extends HookWidget {

  const WalletOption ({
    super.key
  });


  @override Widget build (BuildContext context) {

    final ValueNotifier <bool> isPressed = useState (false);


    void handleTap () async {

      Navigator.pop (context);


      await Future.delayed (const Duration (milliseconds: 150));

      if (!context.mounted) return;


      Widget pageBuilder (context, animation, secondaryAnimation) {

        return (

          const WalletWindow ()

        );

      }


      Widget transitionBuilder (context, animation, secondaryAnimation, child) {

        final CurvedAnimation fadeAnimation = CurvedAnimation (
          parent: animation,
          curve: Curves.easeOut,
          reverseCurve: Curves.easeIn
        );

        if (animation.status == AnimationStatus.reverse) {

          return (

            FadeTransition (
              opacity: fadeAnimation,
              child: child
            )

          );

        }

        final Animation <double> scaleAnimation = Tween (begin: 0.975, end: 1.0).animate (
          CurvedAnimation (
            parent: animation,
            curve: Curves.easeOut
          )
        );

        return (

          FadeTransition (
            opacity: fadeAnimation,
            child: ScaleTransition (
              scale: scaleAnimation,
              child: child
            )
          )

        );

      }


      showGeneralDialog (
        context: context,
        barrierDismissible: true,
        barrierLabel: 'Dismiss',
        barrierColor: context.colors.windowBarrier,
        transitionDuration: const Duration (
          milliseconds: 175
        ),
        pageBuilder: pageBuilder,
        transitionBuilder: transitionBuilder
      );

    }

    void onPanDown (details) {

      isPressed.value = true;

    }

    void onTapUp (details) {

      isPressed.value = false;

    }

    void onPanCancel () {

      isPressed.value = false;

    }

    void onTapCancel () {

      isPressed.value = false;

    }

    void onLongPressCancel () {

      isPressed.value = false;

    }


    return (

      GestureDetector (
        onTap: handleTap,
        onPanDown: onPanDown,
        onTapUp: onTapUp,
        onPanCancel: onPanCancel,
        onTapCancel: onTapCancel,
        onLongPressCancel: onLongPressCancel,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.97,
          child: Container (
            padding: const EdgeInsets.only (
              top: 10,
              bottom: 10
            ),
            child: Row (
              children: [
                SvgPicture.asset (
                  context.icons.wallet,
                  colorFilter: ColorFilter.mode (
                    context.colors.drawerOptionIcon,
                    BlendMode.srcIn
                  ),
                  height: 19
                ),
                const SizedBox (
                  width: 12
                ),
                Text (
                  T.of(context).wallet,
                  style: TextStyle (
                    fontFamily: 'Archivo',
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5,
                    color: context.colors.textDrawerOption
                  )
                ),
                Flexible (
                  child: Container ()
                ),
                SvgPicture.asset (
                  context.icons.arrowDrawerOption,
                  colorFilter: ColorFilter.mode (
                    context.colors.iconArrowDrawerOption,
                    BlendMode.srcIn
                  ),
                  height: 14
                )
              ]
            )
          )
        )
      )

    );

  }

}