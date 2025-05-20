import 'package:get/get.dart';

import '../controllers/contect_controller.dart';

class ContectBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ContectController>(
      () => ContectController(),
    );
  }
}
