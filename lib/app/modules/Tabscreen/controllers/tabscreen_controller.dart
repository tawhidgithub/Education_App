import 'package:education_app/app/modules/Contect/views/contect_view.dart';
import 'package:education_app/app/modules/NotisScreen/views/notis_screen_view.dart';
import 'package:education_app/app/modules/ProfileScreen/views/profile_screen_view.dart';
import 'package:education_app/app/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../../Home/views/home_view.dart';

class TabscreenController extends GetxController {
  //TODO: Implement TabscreenController

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

  List<Widget> buildScreens() {
    return [
      HomeView(),
      NotisScreenView(),
      ContectView(),
      ProfileScreenView()
    ];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Home"),
        activeColorPrimary:ColorManager.darkBlueColor,
        inactiveColorPrimary:ColorManager.globalBackgroundFAF9FB ,
        contentPadding: 8, // adds equal top and bottom spacing inside each item

        // scrollController: _scrollController1,
      ),
      PersistentBottomNavBarItem(

        icon: Icon(Icons.notifications),
        title: ("Notis"),
        activeColorPrimary:ColorManager.darkBlueColor,
        inactiveColorPrimary:ColorManager.globalBackgroundFAF9FB ,

        // scrollController: _scrollController1,
      ), PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        title: ("Profile"),
        activeColorPrimary:ColorManager.darkBlueColor,
        inactiveColorPrimary:ColorManager.globalBackgroundFAF9FB ,
        // scrollController: _scrollController1,
      ), PersistentBottomNavBarItem(
        icon: Icon(Icons.more_horiz),
        title: ("Settings"),
        textStyle: TextStyle(color: ColorManager.primaryWhite),

        activeColorPrimary:ColorManager.darkBlueColor,
        inactiveColorPrimary:ColorManager.globalBackgroundFAF9FB ,
        // scrollController: _scrollController1,
      ),
    ];
  }




}
