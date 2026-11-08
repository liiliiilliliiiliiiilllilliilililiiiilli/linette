// Net window

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:linette/app/modules/texts/texts.dart';
import 'package:linette/app/widgets/window/window.dart';
import 'widgets/parametersblock/parametersblock.dart';
import 'widgets/parametersblock/widgets/title/title.dart';
import 'widgets/parametersblock/widgets/parameter/parameter.dart';



class NetWindow extends HookWidget {

  const NetWindow ({
    super.key
  });


  @override Widget build (BuildContext context) {

    return (

      Window (
        width: 340,
        isExpanded: true,
        title: context.texts.windowNetTitle,
        body: SingleChildScrollView (
          child: Padding (
            padding: const EdgeInsets.only (
              top: 10,
              bottom: 2.5
            ),
            child: DefaultTextStyle (
              style: const TextStyle (
                fontSize: 15.5
              ),
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8 * 3,
                children: [
                  ParametersBlock (
                    title: TitleComponent (
                      context.texts.windowNetBodyParametersBlock_1_Title
                    ),
                    parameters: [
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_1_Parameter_1_Stata,
                        value: context.texts.windowNetBodyParametersBlock_1_Parameter_1_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_1_Parameter_2_Stata,
                        value: context.texts.windowNetBodyParametersBlock_1_Parameter_2_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_1_Parameter_3_Stata,
                        value: context.texts.windowNetBodyParametersBlock_1_Parameter_3_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_1_Parameter_4_Stata,
                        value: context.texts.windowNetBodyParametersBlock_1_Parameter_4_Value
                      )
                    ]
                  ),
                  ParametersBlock (
                    darkened: false,
                    title: TitleComponent (
                      context.texts.windowNetBodyParametersBlock_2_Title
                    ),
                    parameters: [
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_2_Parameter_1_Stata,
                        value: context.texts.windowNetBodyParametersBlock_2_Parameter_1_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_2_Parameter_2_Stata,
                        value: context.texts.windowNetBodyParametersBlock_2_Parameter_2_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_2_Parameter_3_Stata,
                        value: context.texts.windowNetBodyParametersBlock_2_Parameter_3_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_2_Parameter_4_Stata,
                        value: context.texts.windowNetBodyParametersBlock_2_Parameter_4_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_2_Parameter_5_Stata,
                        value: context.texts.windowNetBodyParametersBlock_2_Parameter_5_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_2_Parameter_6_Stata,
                        value: context.texts.windowNetBodyParametersBlock_2_Parameter_6_Value
                      )
                    ]
                  ),
                  ParametersBlock (
                    title: TitleComponent (
                      context.texts.windowNetBodyParametersBlock_3_Title
                    ),
                    parameters: [
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_3_Parameter_1_Stata,
                        value: context.texts.windowNetBodyParametersBlock_3_Parameter_1_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_3_Parameter_2_Stata,
                        value: context.texts.windowNetBodyParametersBlock_3_Parameter_2_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_3_Parameter_3_Stata,
                        value: context.texts.windowNetBodyParametersBlock_3_Parameter_3_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_3_Parameter_4_Stata,
                        value: context.texts.windowNetBodyParametersBlock_3_Parameter_4_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_3_Parameter_5_Stata,
                        value: context.texts.windowNetBodyParametersBlock_3_Parameter_5_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_3_Parameter_6_Stata,
                        value: context.texts.windowNetBodyParametersBlock_3_Parameter_6_Value
                      )
                    ]
                  ),
                  ParametersBlock (
                    title: TitleComponent (
                      context.texts.windowNetBodyParametersBlock_4_Title
                    ),
                    parameters: [
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_4_Parameter_1_Stata,
                        value: context.texts.windowNetBodyParametersBlock_4_Parameter_1_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_4_Parameter_2_Stata,
                        value: context.texts.windowNetBodyParametersBlock_4_Parameter_2_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_4_Parameter_3_Stata,
                        value: context.texts.windowNetBodyParametersBlock_4_Parameter_3_Value
                      )
                    ]
                  ),
                  ParametersBlock (
                    title: TitleComponent (
                      context.texts.windowNetBodyParametersBlock_5_Title
                    ),
                    parameters: [
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_5_Parameter_1_Stata,
                        value: context.texts.windowNetBodyParametersBlock_5_Parameter_1_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_5_Parameter_2_Stata,
                        value: context.texts.windowNetBodyParametersBlock_5_Parameter_2_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_5_Parameter_3_Stata,
                        value: context.texts.windowNetBodyParametersBlock_5_Parameter_3_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_5_Parameter_4_Stata,
                        value: context.texts.windowNetBodyParametersBlock_5_Parameter_4_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_5_Parameter_5_Stata,
                        value: context.texts.windowNetBodyParametersBlock_5_Parameter_5_Value
                      )
                    ]
                  ),
                  ParametersBlock (
                    title: TitleComponent (
                      context.texts.windowNetBodyParametersBlock_6_Title
                    ),
                    parameters: [
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_6_Parameter_1_Stata,
                        value: context.texts.windowNetBodyParametersBlock_6_Parameter_1_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_6_Parameter_2_Stata,
                        value: context.texts.windowNetBodyParametersBlock_6_Parameter_2_Value
                      ),
                      ParameterComponent (
                        stata: context.texts.windowNetBodyParametersBlock_6_Parameter_3_Stata,
                        value: context.texts.windowNetBodyParametersBlock_6_Parameter_3_Value
                      )
                    ]
                  )
                ]
              )
            )
          )
        ),
        action: context.texts.windowNetAction
      )

    );

  }

}