import 'package:education_app/app/resources/color_manager.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../controllers/tabscreen_controller.dart';

class TabScreenView extends GetView<TabscreenController> {
  const TabScreenView({super.key});
  @override
  Widget build(BuildContext context) {
 return   PersistentTabView(

      context,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),


      // controller: _controller,
      screens: controller.buildScreens(),
      items: controller.navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      // popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.symmetric(),
      backgroundColor: ColorManager.blueColor,
      isVisible: true,

      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(15)
      ),
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 200),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: 80,
      navBarStyle: NavBarStyle.style1, // Choose the nav bar style with this property
    );
  }
}
