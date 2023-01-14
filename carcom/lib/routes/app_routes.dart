import 'package:ntua_el18610_s_application1/presentation/mycars_four_screen/mycars_four_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_four_screen/binding/mycars_four_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_one_screen/mechanics_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_one_screen/binding/mechanics_one_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_screen/car_customize_color_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_screen/binding/car_customize_color_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_tint_screen/car_customize_window_tint_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_tint_screen/binding/car_customize_window_tint_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_rims_one_screen/car_customize_rims_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_rims_one_screen/binding/car_customize_rims_one_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_screen/mycars_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_screen/binding/mycars_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_one_screen/car_customize_color_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_one_screen/binding/car_customize_color_one_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_two_screen/mycars_two_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_two_screen/binding/mycars_two_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_screen/mechanics_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_screen/binding/mechanics_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_tint_one_screen/car_customize_window_tint_one_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_tint_one_screen/binding/car_customize_window_tint_one_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_three_screen/mycars_three_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_three_screen/binding/mycars_three_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_rims_screen/car_customize_rims_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_rims_screen/binding/car_customize_rims_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_decals_screen/car_customize_window_decals_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_window_decals_screen/binding/car_customize_window_decals_binding.dart';
import 'package:ntua_el18610_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:ntua_el18610_s_application1/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String mycarsFourScreen = '/mycars_four_screen';

  static const String mechanicsOneScreen = '/mechanics_one_screen';

  static const String carCustomizeColorScreen = '/car_customize_color_screen';

  static const String mycarprofileOnePage = '/mycarprofile_one_page';

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

  static const String carCustomizeWindowDecalsScreen =
      '/car_customize_window_decals_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mycarsFourScreen,
      page: () => MycarsFourScreen(),
      bindings: [
        MycarsFourBinding(),
      ],
    ),
    GetPage(
      name: mechanicsOneScreen,
      page: () => MechanicsOneScreen(),
      bindings: [
        MechanicsOneBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeColorScreen,
      page: () => CarCustomizeColorScreen(),
      bindings: [
        CarCustomizeColorBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeWindowTintScreen,
      page: () => CarCustomizeWindowTintScreen(),
      bindings: [
        CarCustomizeWindowTintBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeRimsOneScreen,
      page: () => CarCustomizeRimsOneScreen(),
      bindings: [
        CarCustomizeRimsOneBinding(),
      ],
    ),
    GetPage(
      name: mycarsScreen,
      page: () => MycarsScreen(),
      bindings: [
        MycarsBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeColorOneScreen,
      page: () => CarCustomizeColorOneScreen(),
      bindings: [
        CarCustomizeColorOneBinding(),
      ],
    ),
    GetPage(
      name: mycarsTwoScreen,
      page: () => MycarsTwoScreen(),
      bindings: [
        MycarsTwoBinding(),
      ],
    ),
    GetPage(
      name: mechanicsScreen,
      page: () => MechanicsScreen(),
      bindings: [
        MechanicsBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeWindowTintOneScreen,
      page: () => CarCustomizeWindowTintOneScreen(),
      bindings: [
        CarCustomizeWindowTintOneBinding(),
      ],
    ),
    GetPage(
      name: mycarsThreeScreen,
      page: () => MycarsThreeScreen(),
      bindings: [
        MycarsThreeBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeRimsScreen,
      page: () => CarCustomizeRimsScreen(),
      bindings: [
        CarCustomizeRimsBinding(),
      ],
    ),
    GetPage(
      name: carCustomizeWindowDecalsScreen,
      page: () => CarCustomizeWindowDecalsScreen(),
      bindings: [
        CarCustomizeWindowDecalsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => MycarsFourScreen(),
      bindings: [
        MycarsFourBinding(),
      ],
    )
  ];
}
