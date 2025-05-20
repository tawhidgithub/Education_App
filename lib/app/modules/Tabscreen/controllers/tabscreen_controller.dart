import 'package:education_app/app/modules/Contect/views/contect_view.dart';
import 'package:education_app/app/modules/NotisScreen/views/notis_screen_view.dart';
import 'package:education_app/app/modules/ProfileScreen/views/profile_screen_view.dart';
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
        activeColorPrimary:Colors.black45,
        inactiveColorPrimary:Colors.yellow ,
        // scrollController: _scrollController1,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Notis"),
        activeColorPrimary:Colors.black45,
        inactiveColorPrimary:Colors.yellow ,
        // scrollController: _scrollController1,
      ), PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Contect"),
        activeColorPrimary:Colors.black45,
        inactiveColorPrimary:Colors.yellow ,
        // scrollController: _scrollController1,
      ), PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        title: ("Profile"),
        activeColorPrimary:Colors.black45,
        inactiveColorPrimary:Colors.yellow ,
        // scrollController: _scrollController1,
      ),
    ];
  }




}
