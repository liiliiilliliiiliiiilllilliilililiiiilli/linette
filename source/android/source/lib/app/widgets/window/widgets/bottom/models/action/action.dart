// Window global widget - Bottom - Action model

class ActionModel {

  final String text;
  final Function () onPress;
  final bool isDisabled;
  final ActionColorModel color;


  const ActionModel (
    this.text, {
    required this.onPress,
    this.isDisabled = false,
    required this.color
  });

}



enum ActionColorModel {

  disabled,
  grey,
  green,
  red

}