import 'package:flutter/material.dart';


import 'color_manager.dart';
import 'english_style_manager.dart';

class LocalText extends StatelessWidget {
  const LocalText({super.key, this.color= ColorManager.primaryBlack,  this.fontSize=16,  this.fontWeight=FontWeight.bold,required this.text});
final double fontSize;
final FontWeight fontWeight;
final Color color;
final dynamic text;

  @override
  Widget build(BuildContext context) {
    return Text("$text",style:getEnglishTextStyle(  fontSize: fontSize, fontWeight: fontWeight, color: color, ), maxLines: 3,);
  }
}
