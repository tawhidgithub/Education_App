import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'splashScreenController.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    if(kDebugMode){
      print("-----------------------------Binding dependencies called for Splash Bindings");

    }
    Get.lazyPut<SplashScreenController>(() => SplashScreenController());
  }
}
