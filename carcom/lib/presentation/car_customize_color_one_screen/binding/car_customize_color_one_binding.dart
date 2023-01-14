import '../controller/car_customize_color_one_controller.dart';
import 'package:get/get.dart';

class CarCustomizeColorOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeColorOneController());
  }
}
