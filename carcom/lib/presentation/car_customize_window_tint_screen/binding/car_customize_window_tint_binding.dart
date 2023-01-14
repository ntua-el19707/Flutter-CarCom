import '../controller/car_customize_window_tint_controller.dart';
import 'package:get/get.dart';

class CarCustomizeWindowTintBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeWindowTintController());
  }
}
