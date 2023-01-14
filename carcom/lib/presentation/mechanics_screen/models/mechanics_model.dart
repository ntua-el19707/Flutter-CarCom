import 'package:get/get.dart';
import 'listcarname1_item_model.dart';
import 'listavatars3davatarten1_item_model.dart';

class MechanicsModel {
  RxList<Listcarname1ItemModel> listcarname1ItemList =
      RxList.filled(3, Listcarname1ItemModel());

  RxList<Listavatars3davatarten1ItemModel> listavatars3davatarten1ItemList =
      RxList.filled(5, Listavatars3davatarten1ItemModel());
}
