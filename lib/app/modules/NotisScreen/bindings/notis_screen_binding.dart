import 'package:get/get.dart';

import '../controllers/notis_screen_controller.dart';

class NotisScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotisScreenController>(
      () => NotisScreenController(),
    );
  }
}
