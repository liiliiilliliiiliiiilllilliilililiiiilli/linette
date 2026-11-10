// Methods module - Transit to page

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/welcome/welcome.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';



class TransitToPageElement {

  static Future <void> transitToPage (BuildContext context, WidgetRef ref, Widget page) async {

    final WelcomeNotifier welcomeNotifier = ref.read (welcomeProvider.notifier);

    final ActionsFreezeNotifier actionsFreezeNotifier = ref.read (actionsFreezeProvider.notifier);


    await welcomeNotifier.completeWelcome ();


    actionsFreezeNotifier.freeze ();


    if (context.mounted) {

      await Navigator.pushReplacement (
        context,
        PageRouteBuilder (
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: const Duration (milliseconds: 750),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {

            return (

              AnimatedBuilder (
                animation: animation,
                builder: (context, _) {

                  final double value = animation.value;

                  if (value < 0.5) {

                    final double progress = value * 2;
                    final double curveValue = Curves.easeInOut.transform (progress);

                    return (

                      Opacity (
                        opacity: curveValue,
                        child: Container (
                          color: context.colors.backPrime
                        )
                      )

                    );

                  }

                  else {

                    final double progress = (value - 0.5) * 2;
                    final double curveValue = Curves.easeInOut.transform (progress);

                    return (

                      Container (
                        color: context.colors.backPrime,
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

}