import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/presentation/mechanics_screen/models/mechanics_model.dart';

class MechanicsController extends GetxController {
  Rx<MechanicsModel> mechanicsModelObj = MechanicsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
