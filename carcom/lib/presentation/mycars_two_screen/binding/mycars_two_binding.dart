import '../controller/mycars_two_controller.dart';
import 'package:get/get.dart';

class MycarsTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MycarsTwoController());
  }
}
