

import 'package:flutter/material.dart';

class SizeVr extends StatelessWidget {
  const SizeVr({super.key,required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: height,
    );
  }
}

