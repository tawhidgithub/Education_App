import 'package:get/get.dart';

import '../controllers/tabscreen_controller.dart';

class TabscreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabscreenController>(
      () => TabscreenController(),
    );
  }
}
