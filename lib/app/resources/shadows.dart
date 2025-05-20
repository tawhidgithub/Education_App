import 'package:flutter/material.dart';

class MyShadows{

  static  BoxShadow tabShadow = BoxShadow(
    color: Colors.white.withOpacity(0.18),
    offset: const Offset(0, 6),
    blurRadius: 20,
    spreadRadius: 0,
  );
  static  BoxShadow ssShadow =  BoxShadow( /// Splash Screen (SS)
    color: const Color(0xff000000,).withOpacity(0.29),
    offset: const Offset(0, 0),
    blurRadius: 14.5,
    spreadRadius: 5,
  );

  static  BoxShadow gridItemShadow = const BoxShadow(
    color: Color.fromRGBO(53, 0, 105, 0.06),
    offset: Offset(0, 7),
    blurRadius: 14,
    spreadRadius: 0,
  );

  static  BoxShadow inputFieldShadow = const BoxShadow(
    color: Color.fromRGBO(2, 0, 44, 0.06),
    offset: Offset(0, 0),
    blurRadius: 8,
    spreadRadius: 0,
  );

  static  BoxShadow buttonShadow = const BoxShadow(

    color: Color.fromRGBO(73, 0, 146, 0.03),
    offset: Offset(0, 6),
    blurRadius: 15,
    spreadRadius: 0,
  );
}