// Methods module - Transit to page

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/providers/welcome/welcome.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension TransitToPageExtension on AppMethods {

  Future <void> transitToPage (BuildContext context, WidgetRef ref, Widget page, {bool shouldCompleteWelcome = false}) async {

    final ActionsFreezeNotifier actionsFreezeNotifier = ref.read (actionsFreezeProvider.notifier);


    if (shouldCompleteWelcome) {

      final WelcomeNotifier welcomeNotifier = ref.read (welcomeProvider.notifier);


      Future.delayed (const Duration (milliseconds: 750), () async {

        await welcomeNotifier.completeWelcome ();

      });

    }


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