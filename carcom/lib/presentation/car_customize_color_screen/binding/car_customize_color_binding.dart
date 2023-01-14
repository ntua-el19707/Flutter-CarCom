import '../controller/car_customize_color_controller.dart';
import 'package:get/get.dart';

class CarCustomizeColorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeColorController());
  }
}
