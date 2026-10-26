// Welcome page - Body - Bottom - Button go

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/welcome/welcome.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/pages/home/home.dart';
import 'package:linette/app/widgets/button/button.dart';



class ButtonGo extends HookConsumerWidget {

  const ButtonGo ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void onTap () async {

      final welcomeNotifier = ref.read (welcomeProvider.notifier);

      await welcomeNotifier.completeWelcome ();


      if (context.mounted) {

        await Navigator.pushReplacement (
          context,
          PageRouteBuilder (
            pageBuilder: (context, animation, secondaryAnimation) => const HomePage (),
            transitionDuration: const Duration (milliseconds: 750),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {

              return (

                AnimatedBuilder (
                  animation: animation,
                  builder: (context, _) {

                    final value = animation.value;

                    if (value < 0.5) {

                      final progress = value * 2;
                      final curveValue = Curves.easeInOut.transform (progress);

                      return (

                        Opacity (
                          opacity: curveValue,
                          child: Container (
                            color: context.colors.appBarBack
                          )
                        )

                      );

                    }

                    else {

                      final progress = (value - 0.5) * 2;
                      final curveValue = Curves.easeInOut.transform (progress);

                      return (

                        Container (
                          color: context.colors.appBarBack,
                          child: Opacity (
                            opacity: curveValue,
                            child: child
                          )
                        )

                      );

                    }

                  }
                )

              );

            }
          )
        );

      }

    }


    return (

      ButtonComponent (
        text: context.texts.pageWelcomeBodyBottomGo,
        onTap: onTap,
        icon: context.icons.arrow,
        iconSize: 14
      )

    );

  }

}