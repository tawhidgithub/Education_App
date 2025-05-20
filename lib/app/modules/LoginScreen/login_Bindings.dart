import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import 'LoginController.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
if(kDebugMode){
  print("-----------------------------Binding dependencies called for Login Bindings");

}
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
