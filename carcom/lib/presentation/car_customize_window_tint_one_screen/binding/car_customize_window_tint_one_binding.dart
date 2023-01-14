import '../controller/car_customize_window_tint_one_controller.dart';
import 'package:get/get.dart';

class CarCustomizeWindowTintOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeWindowTintOneController());
  }
}
