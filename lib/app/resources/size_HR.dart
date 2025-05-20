import 'package:flutter/material.dart';

class SizeHr extends StatelessWidget {
  const SizeHr({super.key,required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
