import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'color_manager.dart';

class SwitchForToggle extends StatelessWidget {
  const SwitchForToggle({super.key,required this.textValue,required this.onToggle});
final List<String> textValue;
final OnToggle onToggle;
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 90.0,
      minHeight: 40,
      initialLabelIndex: 0,
      cornerRadius: 20.0,

      activeFgColor: Colors.white,
      activeBgColor: const [ ColorManager.primaryBlack,ColorManager.primaryBlack],
      inactiveBgColor:  ColorManager.inactiveToggleBTColor,
        borderColor: [ColorManager.primaryColorDarkBlue],
    borderWidth: 3,
    inactiveFgColor: Colors.white,
      totalSwitches: 2,
      labels: textValue,
      onToggle:onToggle,
    );
  }
}
