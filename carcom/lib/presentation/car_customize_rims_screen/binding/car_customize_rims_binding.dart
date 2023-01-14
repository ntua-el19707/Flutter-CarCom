import '../controller/car_customize_rims_controller.dart';
import 'package:get/get.dart';

class CarCustomizeRimsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeRimsController());
  }
}
