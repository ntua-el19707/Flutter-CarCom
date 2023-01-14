import '../controller/mycars_three_controller.dart';
import 'package:get/get.dart';

class MycarsThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MycarsThreeController());
  }
}
