// Window global widget - Body - Action - Choice activity

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/icons/icons.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/widgets/presser/presser.dart';
import 'widgets/menu/menu.dart';
import 'widgets/menu/widgets/choice/choice.dart';



class ChoiceActivity extends HookConsumerWidget {

  final String text;
  final List <Choice> choices;
  final VoidCallback? onOpen;
  final VoidCallback? onClose;


  const ChoiceActivity (
    this.text, {
    super.key,
    required this.choices,
    this.onOpen,
    this.onClose
  });


  Future <void> open (BuildContext context, WidgetRef ref) async {

    onOpen?.call ();


    await context.methods.openMenu (
      context,
      ref,
      menu: Menu (
        choices: choices
      ),
      alignment: Alignment.topRight
    );


    onClose?.call ();

  }


  @override Widget build (BuildContext context, WidgetRef ref) {

    final ValueNotifier <bool> isPressed = useState (false);


    return (

      Presser (
        onPress: () => open (context, ref),
        isPressed: isPressed,
        child: Row (
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: [
            Text (
              text,
              style: TextStyle (
                fontWeight: FontWeight.w500,
                fontSize: 15.5,
                height: 1,
                color: context.colors.windowBodyActionRegular
              )
            ),
            SvgPicture.asset (
              context.icons.windowBodyActionChoice,
              width: 8,
              height: 8,
              colorFilter: ColorFilter.mode (
                context.colors.windowBodyActionRegular,
                BlendMode.srcIn
              )
            )
          ]
        )
      )

    );

  }

}