import '../controller/car_customize_rims_one_controller.dart';
import 'package:get/get.dart';

class CarCustomizeRimsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CarCustomizeRimsOneController());
  }
}
