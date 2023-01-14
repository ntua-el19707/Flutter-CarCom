import '../controller/mechanics_controller.dart';
import 'package:get/get.dart';

class MechanicsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MechanicsController());
  }
}
