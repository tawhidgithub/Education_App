import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController{
String singUpText="Registration";
RxBool isStudent=true.obs;

@override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

  }

  setStuOrTEView(value){
  if(kDebugMode){

    print("---------------Location: RegistrationController----------------Is Student: ${isStudent.value}");
    print("---------------Location: RegistrationController----------------Value: $value");
  }
  if(value==0){
    isStudent.value=true;
  }else{
    isStudent.value=false;

  }



  }




}