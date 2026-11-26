// Methods module - Open menu

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/providers/actionsfreeze/actionsfreeze.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/methods/methods.dart';



extension OpenMenuExtension on AppMethods {

  Future <void> openMenu (BuildContext context, WidgetRef ref, {required Widget menu, Offset offset = const Offset (0, 10), Alignment alignment = Alignment.center, Alignment targetAnchor = Alignment.bottomRight, Alignment followerAnchor = Alignment.topRight, double screenMargin = 12, void Function ()? callbackBefore}) async {

    final RenderBox? renderBox = context.findRenderObject () as RenderBox?;


    if (renderBox == null || !renderBox.hasSize) {

      return;

    }


    final Offset targetOffset = renderBox.localToGlobal (Offset.zero);
    final Size targetSize = renderBox.size;
    final EdgeInsets safePadding = MediaQuery.paddingOf (context);


    final ActionsFreezeNotifier actionsFreezeNotifier = ref.read (actionsFreezeProvider.notifier);


    actionsFreezeNotifier.freeze ();


    callbackBefore?.call ();


    await Future.delayed (const Duration (milliseconds: 25));


    if (!context.mounted) {

      return;

    }


    await showGeneralDialog (
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Dismiss',
      barrierColor: context.colors.menuBarrier,
      transitionDuration: const Duration (milliseconds: 125),
      pageBuilder: (BuildContext dialogContext, Animation <double> animation, Animation <double> secondaryAnimation) {
        return (
          CustomSingleChildLayout (
            delegate: MenuPositionDelegate (
              targetOffset: targetOffset,
              targetSize: targetSize,
              targetAnchor: targetAnchor,
              followerAnchor: followerAnchor,
              offset: offset,
              safePadding: safePadding,
              screenMargin: screenMargin
            ),
            child: MenuTransition (
              animation: animation,
              alignment: alignment,
              child: menu
            )
          )
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) => child
    );


    if (!context.mounted) {

      return;

    }


    actionsFreezeNotifier.freeze ();

  }

}



class MenuPositionDelegate extends SingleChildLayoutDelegate {

  final Offset targetOffset;
  final Size targetSize;
  final Alignment targetAnchor;
  final Alignment followerAnchor;
  final Offset offset;
  final EdgeInsets safePadding;
  final double screenMargin;


  const MenuPositionDelegate ({
    required this.targetOffset,
    required this.targetSize,
    required this.targetAnchor,
    required this.followerAnchor,
    required this.offset,
    required this.safePadding,
    required this.screenMargin
  });


  @override BoxConstraints getConstraintsForChild (BoxConstraints constraints) {

    final double maxWidth = (constraints.maxWidth - safePadding.horizontal - screenMargin * 2).clamp(0.0, double.infinity);
    final double maxHeight = (constraints.maxHeight - safePadding.vertical - screenMargin * 2).clamp(0.0, double.infinity);


    return (

      BoxConstraints (
        maxWidth: maxWidth,
        maxHeight: maxHeight
      )

    );

  }


  @override Offset getPositionForChild (Size size, Size childSize) {

    final double minX = safePadding.left + screenMargin;
    final double maxX = (size.width - safePadding.right - screenMargin - childSize.width).clamp(minX, double.infinity);

    final double minY = safePadding.top + screenMargin;
    final double maxY = (size.height - safePadding.bottom - screenMargin - childSize.height).clamp(minY, double.infinity);


    // Базовый расчёт позиции:

    Offset targetPoint = targetOffset + targetAnchor.alongSize (targetSize);
    Offset followerPoint = followerAnchor.alongSize (childSize);
    Offset position = targetPoint - followerPoint + offset;


    // Автоматический переворот по вертикали, если меню не помещается снизу (или сверху):

    final bool overflowsBottom = position.dy > maxY;
    final bool overflowsTop = position.dy < minY;


    if (overflowsBottom || overflowsTop) {

      final Alignment flippedTargetAnchor = Alignment (targetAnchor.x, -targetAnchor.y);
      final Alignment flippedFollowerAnchor = Alignment (followerAnchor.x, -followerAnchor.y);
      final Offset flippedOffset = Offset (offset.dx, -offset.dy);

      final Offset flippedTargetPoint = targetOffset + flippedTargetAnchor.alongSize (targetSize);
      final Offset flippedFollowerPoint = flippedFollowerAnchor.alongSize (childSize);
      final Offset flippedPosition = flippedTargetPoint - flippedFollowerPoint + flippedOffset;


      // Применяем перевёрнутую позицию только если она лучше вписывается в экран:

      final bool fitsAfterFlip = flippedPosition.dy >= minY && flippedPosition.dy <= maxY;

      if (fitsAfterFlip) {

        position = flippedPosition;

      }

    }


    // Финальное ограничение (clamp) в пределах безопасных границ экрана:

    final double clampedX = position.dx.clamp (minX, maxX);
    final double clampedY = position.dy.clamp (minY, maxY);


    return (

      Offset (clampedX, clampedY)

    );

  }


  @override bool shouldRelayout (covariant MenuPositionDelegate oldDelegate) {

    return (

      (targetOffset != oldDelegate.targetOffset) ||
      (targetSize != oldDelegate.targetSize) ||
      (targetAnchor != oldDelegate.targetAnchor) ||
      (followerAnchor != oldDelegate.followerAnchor) ||
      (offset != oldDelegate.offset) ||
      (safePadding != oldDelegate.safePadding) ||
      (screenMargin != oldDelegate.screenMargin)

    );

  }

}



class MenuTransition extends StatelessWidget {

  final Animation <double> animation;
  final Alignment alignment;
  final Widget child;


  const MenuTransition ({
    super.key,
    required this.animation,
    required this.alignment,
    required this.child
  });


  @override Widget build (BuildContext context) {

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


    final Animation <double> scaleAnimation = Tween<double>(begin: 0.975, end: 1.0).animate(
      CurvedAnimation (
        parent: animation,
        curve: Curves.easeOut
      )
    );


    return (

      FadeTransition (
        opacity: fadeAnimation,
        child: ScaleTransition (
          alignment: alignment,
          scale: scaleAnimation,
          child: child
        )
      )

    );

  }

}