import 'package:education_app/app/resources/color_manager.dart';
import 'package:flutter/material.dart';


class DrawerBtn extends StatelessWidget {
  const DrawerBtn({super.key,required this.btnText});
final String btnText;
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return InkWell(
      child: Ink(
        child: Container(
          width: width-300,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1,color: ColorManager.primaryBlack))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(child: Text(btnText)),
          ),
        ),
      ),
    );
  }
}
