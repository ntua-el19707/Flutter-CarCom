import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/presentation/car_customize_color_screen/models/car_customize_color_model.dart';

class CarCustomizeColorController extends GetxController {
  Rx<CarCustomizeColorModel> carCustomizeColorModelObj =
      CarCustomizeColorModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
