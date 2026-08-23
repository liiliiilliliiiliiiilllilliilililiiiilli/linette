// Home page - Drawer - Main - Language option

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/locale.dart';
import 'package:flutter_svg/svg.dart';
import 'package:linette/app/localization/generated/l10n.dart';
import 'package:linette/app/theme/icons.dart';
import 'package:linette/app/theme/colors.dart';
import 'package:linette/app/elements/animatorpresser/animatorpresser.dart';
import 'components/changelanguagewindow/changelanguagewindow.dart';



class LanguageOption extends HookConsumerWidget {

  const LanguageOption ({super.key});


  @override Widget build (BuildContext context, WidgetRef ref) {

    final currentLocale = ref.watch(localeProvider).languageCode;


    final isPressed = useState (false);


    void handleTap () async {

      print ('Нажата кнопка опции смены языка!');


      Navigator.pop (context);


      await Future.delayed (Duration (milliseconds: 150));

      if (!context.mounted) return;


      showGeneralDialog (
        context: context,
        barrierDismissible: true,
        barrierLabel: 'Dismiss',
        barrierColor: Colors.black.withAlpha (128),
        transitionDuration: Duration (
          milliseconds: 175
        ),
        pageBuilder: (context, animation, secondaryAnimation) {

          return (

            ChangeLanguageWindow ()

          );

        },
        transitionBuilder: (context, animation, secondaryAnimation, child) {

          final fadeAnimation = CurvedAnimation (
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

          final scaleAnimation = Tween <double> (begin: 0.975, end: 1.0).animate (
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
      );

    }


    return (

      GestureDetector (
        onTap: handleTap,
        onPanDown: (details) => isPressed.value = true,
        onTapUp: (details) => isPressed.value = false,
        onPanCancel: () => isPressed.value = false,
        onTapCancel: () => isPressed.value = false,
        onLongPressCancel: () => isPressed.value = false,
        behavior: HitTestBehavior.opaque,
        child: AnimatorPresser (
          isPressed: isPressed,
          scaleRate: 0.97,
          child: Container (
            padding: EdgeInsets.only (
              top: 10,
              bottom: 10
            ),
            child: Row (
              children: [
                SvgPicture.asset (
                  context.icons.world,
                  colorFilter: ColorFilter.mode (
                    context.colors.iconWorld,
                    BlendMode.srcIn
                  ),
                  height: 19
                ),
                SizedBox (
                  width: 12
                ),
                Text (
                  T.of(context).language,
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5,
                    color: context.colors.textDrawerOption
                  )
                ),
                Flexible (
                  child: Container ()
                ),
                Text (
                  currentLocale == 'ru' ? T.of(context).russian : currentLocale == 'en' ? T.of(context).english : T.of(context).chinese,
                  style: TextStyle (
                    fontFamily: 'Fredoka',
                    fontWeight: FontWeight.w500,
                    fontSize: 17.5,
                    color: context.colors.textDrawerOptionValue
                  )
                )
              ]
            )
          )
        )
      )

    );

  }

}