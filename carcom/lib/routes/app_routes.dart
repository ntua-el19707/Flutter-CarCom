import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_four_screen/mycars_four_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_one_screen/mycars_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_one_screen/mechanics_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_screen/car_customize_color_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycarprofile_one_tab_container_screen/mycarprofile_one_tab_container_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_tint_screen/car_customize_window_tint_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_rims_one_screen/car_customize_rims_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_screen/mycars_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_one_screen/car_customize_color_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_two_screen/mycars_two_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_screen/mechanics_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_tint_one_screen/car_customize_window_tint_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_three_screen/mycars_three_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_rims_screen/car_customize_rims_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycarprofile_tab_container_screen/mycarprofile_tab_container_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_decals_screen/car_customize_window_decals_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String mycarsFourScreen = '/mycars_four_screen';

  static const String mycarsOneScreen = '/mycars_one_screen';

  static const String mechanicsOneScreen = '/mechanics_one_screen';

  static const String carCustomizeColorScreen = '/car_customize_color_screen';

  static const String mycarprofileOnePage = '/mycarprofile_one_page';

  static const String mycarprofileOneTabContainerScreen =
      '/mycarprofile_one_tab_container_screen';

  static const String carCustomizeWindowTintScreen =
      '/car_customize_window_tint_screen';

  static const String carCustomizeRimsOneScreen =
      '/car_customize_rims_one_screen';

  static const String mycarsScreen = '/mycars_screen';

  static const String carCustomizeColorOneScreen =
      '/car_customize_color_one_screen';

  static const String mycarsTwoScreen = '/mycars_two_screen';

  static const String mechanicsScreen = '/mechanics_screen';

  static const String carCustomizeWindowTintOneScreen =
      '/car_customize_window_tint_one_screen';

  static const String mycarsThreeScreen = '/mycars_three_screen';

  static const String carCustomizeRimsScreen = '/car_customize_rims_screen';

  static const String mycarprofilePage = '/mycarprofile_page';

  static const String mycarprofileTabContainerScreen =
      '/mycarprofile_tab_container_screen';

  static const String carCustomizeWindowDecalsScreen =
      '/car_customize_window_decals_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    mycarsFourScreen: (context) => MycarsFourScreen(),
    mycarsOneScreen: (context) => MycarsOneScreen(),
    mechanicsOneScreen: (context) => MechanicsOneScreen(),
    carCustomizeColorScreen: (context) => CarCustomizeColorScreen(),
    mycarprofileOneTabContainerScreen: (context) =>
        MycarprofileOneTabContainerScreen(),
    carCustomizeWindowTintScreen: (context) => CarCustomizeWindowTintScreen(),
    carCustomizeRimsOneScreen: (context) => CarCustomizeRimsOneScreen(),
    mycarsScreen: (context) => MycarsScreen(),
    carCustomizeColorOneScreen: (context) => CarCustomizeColorOneScreen(),
    mycarsTwoScreen: (context) => MycarsTwoScreen(),
    mechanicsScreen: (context) => MechanicsScreen(),
    carCustomizeWindowTintOneScreen: (context) =>
        CarCustomizeWindowTintOneScreen(),
    mycarsThreeScreen: (context) => MycarsThreeScreen(),
    carCustomizeRimsScreen: (context) => CarCustomizeRimsScreen(),
    mycarprofileTabContainerScreen: (context) =>
        MycarprofileTabContainerScreen(),
    carCustomizeWindowDecalsScreen: (context) =>
        CarCustomizeWindowDecalsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
