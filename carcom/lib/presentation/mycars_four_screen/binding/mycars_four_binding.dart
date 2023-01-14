import '../controller/mycars_four_controller.dart';
import 'package:get/get.dart';

class MycarsFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MycarsFourController());
  }
}
