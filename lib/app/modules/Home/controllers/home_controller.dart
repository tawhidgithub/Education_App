import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;



  List<String> DrawerFieldNameLisr=[
    "ABOUT API",
    "DEPARTMENTS",
    "ACADEMIC",
    "TEACHER & STAFF",
    "STUDENT",
    "RESULTS",
    "CONTACTS"
  ];

}
