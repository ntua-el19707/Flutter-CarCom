import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/presentation/mycars_screen/models/mycars_model.dart';

class MycarsController extends GetxController {
  Rx<MycarsModel> mycarsModelObj = MycarsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
