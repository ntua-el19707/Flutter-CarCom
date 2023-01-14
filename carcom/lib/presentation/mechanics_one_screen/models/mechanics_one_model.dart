import 'package:get/get.dart';
import 'listcarname_item_model.dart';
import 'listavatars3davatarten_item_model.dart';

class MechanicsOneModel {
  RxList<ListcarnameItemModel> listcarnameItemList =
      RxList.filled(3, ListcarnameItemModel());

  RxList<Listavatars3davatartenItemModel> listavatars3davatartenItemList =
      RxList.filled(5, Listavatars3davatartenItemModel());
}
