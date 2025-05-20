import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../resources/LocalText.dart';
import '../../resources/btn.dart';
import '../../resources/color_manager.dart';
import '../../resources/extentions/inputField.dart';
import '../../resources/size_VR.dart';
import '../../resources/switch.dart';
import '../../resources/size_HR.dart';
import 'registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColorWhite,
      body:  Container(
        decoration: BoxDecoration(color: ColorManager.primaryColorBackGround),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Column(
            children: [
              ///title

              LocalText(
                  color: ColorManager.primaryColorDarkBlue,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  text: controller.singUpText),
              const SizeVr(height: 20),

              const LocalText(
                  color: ColorManager.primaryBlack,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  text: "As a"),
              SwitchForToggle(
                textValue: const ["Student", "Teacher"],
                onToggle: (val) {
                  controller.setStuOrTEView(val);
                },
              ),

              const SizedBox(
                height: 40,
              ),

              /// Teacher or student

              Obx(()=> controller.isStudent.value ? studentView() : teacherView(),),


              const SizeVr(height: 50),
              Btn(
                text: "Registration",
                onClick: () {},
              ),
              const SizeVr(height: 15),
            ],
          ),
        ),
      ),
    );
  }

  ///Student
  studentView() {
    return Column(
      children: [
        InputFieldForAll(
          hintText: "Name",
          controller: TextEditingController(),
        ),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Roll no"),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Department"),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Season"),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Enter an Email"),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Enter an Password"),
      ],
    );
  }

  teacherView() {
    return Column(
      children: [
        InputFieldForAll(
          hintText: "Name",
          controller: TextEditingController(),
        ),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Contact info"),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Enter a Email"),
        InputFieldForAll(
            controller: TextEditingController(), hintText: "Enter a Password"),
      ],
    );
  }
}
