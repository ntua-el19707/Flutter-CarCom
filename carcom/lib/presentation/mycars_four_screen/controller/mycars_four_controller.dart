import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_four_screen/models/mycars_four_model.dart';

class MycarsFourController extends GetxController {
  Rx<MycarsFourModel> mycarsFourModelObj = MycarsFourModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
// TODO: implement Actions
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
