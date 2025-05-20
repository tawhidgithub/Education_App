import 'dart:async';

import 'package:education_app/app/modules/SplashScreen/splashScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../resources/color_manager.dart';
import '../../resources/english_style_manager.dart';
import '../../resources/shadows.dart';

class SplashView extends GetView<SplashScreenController> {
   SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/image/background_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.primaryColor,
                      boxShadow: [MyShadows.ssShadow]),
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorManager.primaryColorWhite,
                          boxShadow: [MyShadows.ssShadow]),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Image.asset("assets/logo/npi_logo.png"),
                      )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      controller.npiText,
                      style: getEnglishTextStyle(
                          textDecoration: TextDecoration.none,
                          color: ColorManager.primaryColor,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 30),
                    ),
                    Text(
                      "NATIONAL POLYTECHNIC INSTITUTE ",
                      style: getEnglishTextStyle(
                          textDecoration: TextDecoration.none,
                          color: ColorManager.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
