import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'LocalText.dart';
import 'color_manager.dart';


class Btn extends StatelessWidget {
  const Btn({super.key,required this.text, required this.onClick});
final VoidCallback onClick;
final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Ink(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          width: Get.width,
          decoration:BoxDecoration(
            color: ColorManager.primaryColorDarkBlue,
            borderRadius: BorderRadius.circular(20)
          ) ,
          child: Center(child: LocalText(color: ColorManager.primaryColorWhite, fontSize: 24, fontWeight: FontWeight.bold, text: text)),
        ),
      ),
    );
  }
}
