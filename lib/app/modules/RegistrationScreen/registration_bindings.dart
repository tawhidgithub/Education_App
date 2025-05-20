import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'registration_controller.dart';

class RegistrationBindings extends Bindings {


  @override
  void dependencies() {
    if(kDebugMode){
      print("-----------------------------Binding dependencies called for Registration Bindings");

    }    // TODO: implement dependencies
    Get.lazyPut<RegistrationController>(()=>RegistrationController());
  }
}