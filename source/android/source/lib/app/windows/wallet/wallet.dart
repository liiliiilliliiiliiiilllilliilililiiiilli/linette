// Wallet window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';
import 'widgets/action/action.dart';
import 'widgets/action/models/character/character.dart';
import 'widgets/separator/separator.dart';
import 'widgets/table/table.dart';
import 'widgets/table/widgets/stata/stata.dart';
import 'widgets/title/title.dart';



class WalletWindow extends ConsumerWidget {

  const WalletWindow ({
    super.key
  });


  @override Widget build (BuildContext context, WidgetRef ref) {

    void actionRightOnPress () {

      context.methods.freeze (ref);

      context.methods.navigateBack (context);

    }


    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowWalletTitle,
        body: SingleChildScrollView (
          padding: const EdgeInsets.only (
            top: 10 * 1.5,
            left: 2.5 * 1.5,
            right: 2.5 * 1.5,
            bottom: 10 * 1.5
          ),
          child: Column (
            spacing: 24,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleComponent (context.texts.windowWalletBalanceTitle),
              TableComponent (
                topLeft: TableStata (
                  amount: context.texts.windowWalletBalanceTableTopLeftAmount,
                  description: context.texts.windowWalletBalanceTableTopLeftDescription
                ),
                topRight: TableStata (
                  amount: context.texts.windowWalletBalanceTableTopRightAmount,
                  description: context.texts.windowWalletBalanceTableTopRightDescription
                ),
                bottom: TableStata (
                  amount: context.texts.windowWalletBalanceTableBottomAmount,
                  description: context.texts.windowWalletBalanceTableBottomDescription
                )
              ),
              ActionComponent (
                context.texts.windowWalletBalanceActionAccumulate,
                character: ActionCharacter.regular
              ),
              ActionComponent (
                context.texts.windowWalletBalanceActionTopUp,
                character: ActionCharacter.regular
              ),
              const Separator (),
              TitleComponent (context.texts.windowWalletIncomeTitle),
              TableComponent (
                topLeft: TableStata (
                  amount: context.texts.windowWalletIncomeTableTopLeftAmount,
                  description: context.texts.windowWalletIncomeTableTopLeftDescription
                ),
                topRight: TableStata (
                  amount: context.texts.windowWalletIncomeTableTopRightAmount,
                  description: context.texts.windowWalletIncomeTableTopRightDescription
                ),
                bottom: TableStata (
                  amount: context.texts.windowWalletIncomeTableBottomAmount,
                  description: context.texts.windowWalletIncomeTableBottomDescription
                )
              ),
              ActionComponent (
                context.texts.windowWalletIncomeActionWithdraw,
                character: ActionCharacter.regular
              )
            ]
          )
        ),
        actionRight: ActionModel (
          context.texts.windowWalletAction,
          onPress: actionRightOnPress,
          color: ActionColorModel.green
        )
      )

    );

  }

}