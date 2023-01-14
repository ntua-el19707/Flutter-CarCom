import '../controller/mechanics_one_controller.dart';
import 'package:get/get.dart';

class MechanicsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MechanicsOneController());
  }
}
