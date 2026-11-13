// Text field global widget

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/colors/colors.dart';
import 'package:linette/app/modules/fonts/fonts.dart';



class TextFieldComponent extends HookWidget {

  final String hint;
  final bool isPassword;
  final TextEditingController? controller;
  final ValueChanged <String>? onChanged;


  const TextFieldComponent (
    this.hint, {
    super.key,
    this.isPassword = false,
    this.controller,
    this.onChanged
  });


  @override Widget build (BuildContext context) {

    final TextEditingController textFieldController = controller ?? useTextEditingController ();

    final ValueNotifier <bool> obscureText = useState (isPassword);


    return (

      Theme (
        data: Theme.of(context).copyWith(
          textSelectionTheme: TextSelectionThemeData (
            cursorColor: context.colors.textFieldCursor,
            selectionColor: context.colors.textFieldCursor.withAlpha (127),
            selectionHandleColor: context.colors.textFieldCursor
          )
        ),
        child: TextField (
          controller: textFieldController,
          onChanged: onChanged,
          obscureText: obscureText.value,
          style: TextStyle (
            fontFamily: context.fonts.archivo,
            fontWeight: FontWeight.w500,
            fontSize: 14,
            height: 1,
            color: context.colors.textFieldText
          ),
          decoration: InputDecoration (
            isDense: true,
            contentPadding: const EdgeInsets.symmetric (
              horizontal: 15.5,
              vertical: 15.5
            ),
            hintText: hint,
            hintStyle: TextStyle (
              fontFamily: context.fonts.archivo,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              height: 1,
              color: context.colors.textFieldHint
            ),
            border: OutlineInputBorder (
              borderSide: BorderSide (
                width: 2.5,
                color: context.colors.textFieldBorder
              ),
              borderRadius: BorderRadius.circular (12)
            ),
            enabledBorder: OutlineInputBorder (
              borderSide: BorderSide (
                width: 2.5,
                color: context.colors.textFieldBorder
              ),
              borderRadius: BorderRadius.circular (12)
            ),
            focusedBorder: OutlineInputBorder (
              borderSide: BorderSide (
                width: 2.5,
                color: context.colors.textFieldBorder
              ),
              borderRadius: BorderRadius.circular (12)
            ),
            filled: true,
            fillColor: context.colors.textFieldBack
          )
        )
      )

    );

  }

}