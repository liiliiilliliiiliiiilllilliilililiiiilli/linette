// Wallet window

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:linette/app/modules/methods/methods.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/title/title.dart';
import 'package:linette/app/windows/wallet/widgets/table/table.dart';
import 'package:linette/app/windows/wallet/widgets/table/widgets/stata/stata.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/action.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/widgets/transitionactivity/transitionactivity.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/action/models/character/character.dart';
import 'package:linette/app/widgets/window/widgets/body/widgets/separator/separator.dart';
import 'package:linette/app/widgets/window/widgets/bottom/models/action/action.dart';



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
          padding: const EdgeInsets.symmetric (
            horizontal: 20,
            vertical: 14
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
                onPress: () {},
                character: ActionCharacter.regular,
                activity: const TransitionActivity ()
              ),
              ActionComponent (
                context.texts.windowWalletBalanceActionTopUp,
                onPress: () {},
                character: ActionCharacter.regular,
                activity: const TransitionActivity ()
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
                onPress: () {},
                character: ActionCharacter.regular,
                activity: const TransitionActivity ()
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