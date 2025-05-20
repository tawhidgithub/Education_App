import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../resources/LocalText.dart';
import '../../resources/btn.dart';
import '../../resources/color_manager.dart';
import '../../resources/extentions/inputField.dart';
import '../../resources/size_HR.dart';
import '../../resources/size_VR.dart';
import '../../routes/app_pages.dart';
import 'LoginController.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColorWhite,
      body: Container(
        decoration: BoxDecoration(color: ColorManager.primaryColorBackGround),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          "assets/logo/npi_logo.png",
                          fit: BoxFit.cover,
                          color: ColorManager.primaryColorDarkBlue,
                        )),

                    ///title
                     LocalText(
                        color: ColorManager.primaryColorDarkBlue,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        text: controller.loginText),

                    const SizedBox(
                      height: 20,
                    ),
                     LocalText(
                        color: ColorManager.primaryColorDarkBlue,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        text: "Login to your account with"),

                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 170,
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: ColorManager.primaryColorWhiteFill,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/logo/fb_logo.png"),
                          const SizeHr(width: 20),
                          Image.asset("assets/logo/gg_logo.png"),
                          const SizeHr(width: 15),
                          Image.asset("assets/logo/insta_logo.png"),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: LocalText(
                          color: ColorManager.textColorInLoginView,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          text: "OR"),
                    ),

                    InputFieldForAll(
                      hintText: "Enter an Email",
                      controller: TextEditingController(),
                    ),
                    InputFieldForAll(
                        controller: TextEditingController(),
                        hintText: "Enter an Password"),
                    const SizeVr(height: 50),
                    Btn(
                      text: " login",
                      onClick: () {
                        Get.toNamed(Routes.TABSCREEN);
                      },
                    ),
                    const SizeVr(height: 15),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LocalText(text: "if you don’t have any account! "),
                    InkWell(
                        onTap: () {
                          Get.toNamed(Routes.REGISTRATIONVIEW);
                        },
                        child: LocalText(
                            color: ColorManager.primaryColorBlue,
                            text: "REGISTER"))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
