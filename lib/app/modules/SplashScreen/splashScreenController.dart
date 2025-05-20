import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../../routes/app_pages.dart';

class SplashScreenController extends GetxController {



String npiText="NPI";

  @override
  void onInit() {
    super.onInit();

    if(kDebugMode){
      print("=====================Navigating to LoginView");
    }

   Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(Routes.LOGINVIEW);
    });
  }
}
