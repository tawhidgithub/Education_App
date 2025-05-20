import 'package:flutter/material.dart';

import '../color_manager.dart';

class InputFieldForAll extends StatelessWidget {
  const InputFieldForAll({super.key,required this.controller,required this.hintText});
  final hintText;
  final TextEditingController controller;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(

            hintText:hintText,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
            ),
            filled: true,
            fillColor: ColorManager.primaryColorWhiteFill,

            border:  OutlineInputBorder(

              borderRadius: BorderRadius.circular(15)
            )
        ),

      ),
    );
  }
}
