import '../controller/car_customize_window_decals_controller.dart';
import 'package:get/get.dart';

class CarCustomizeWindowDecalsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeWindowDecalsController());
  }
}
