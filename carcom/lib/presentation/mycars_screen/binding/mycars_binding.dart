import '../controller/mycars_controller.dart';
import 'package:get/get.dart';

class MycarsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MycarsController());
  }
}
