import 'package:get/get.dart';

import '../modules/Contect/bindings/contect_binding.dart';
import '../modules/Contect/views/contect_view.dart';
import '../modules/Home/bindings/home_binding.dart';
import '../modules/Home/views/home_view.dart';
import '../modules/LoginScreen/login_Bindings.dart';
import '../modules/LoginScreen/login_view.dart';
import '../modules/NotisScreen/bindings/notis_screen_binding.dart';
import '../modules/NotisScreen/views/notis_screen_view.dart';
import '../modules/ProfileScreen/bindings/profile_screen_binding.dart';
import '../modules/ProfileScreen/views/profile_screen_view.dart';
import '../modules/RegistrationScreen/registration_bindings.dart';
import '../modules/RegistrationScreen/registration_view.dart';
import '../modules/SplashScreen/SplashScreen_Bindings.dart';
import '../modules/SplashScreen/splashScreen.dart';
import '../modules/Tabscreen/bindings/tabscreen_binding.dart';
import '../modules/Tabscreen/views/tabscreen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.LOGINVIEW,
        page: () => LoginView(),
        binding: LoginBindings()),
    GetPage(
        name: _Paths.SPLASHSCREEN,
        page: () => SplashView(),
        binding: SplashScreenBinding()),
    GetPage(
        name: _Paths.REGISTRATIONVIEW,
        page: () => RegistrationView(),
        binding: RegistrationBindings()),
    GetPage(
        name: _Paths.REGISTRATIONVIEW,
        page: () => RegistrationView(),
        binding: RegistrationBindings()),
    GetPage(
      name: _Paths.TABSCREEN,
      page: () => const TabScreenView(),
      binding: TabscreenBinding(),
    ),
    GetPage(
      name: _Paths.NOTIS_SCREEN,
      page: () => const NotisScreenView(),
      binding: NotisScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => const ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
    GetPage(
      name: _Paths.CONTECT,
      page: () => const ContectView(),
      binding: ContectBinding(),
    ),
  ];
}
