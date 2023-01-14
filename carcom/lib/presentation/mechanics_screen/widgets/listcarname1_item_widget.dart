import '../controller/mechanics_controller.dart';
import '../models/listcarname1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Listcarname1ItemWidget extends StatelessWidget {
  Listcarname1ItemWidget(this.listcarname1ItemModelObj);

  Listcarname1ItemModel listcarname1ItemModelObj;

  var controller = Get.find<MechanicsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 5,
        bottom: 5,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              top: 9,
              bottom: 14,
            ),
            child: Text(
              "lbl_car_name2".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterMedium8.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              29.00,
            ),
            margin: getMargin(
              top: 2,
              bottom: 10,
            ),
            child: Text(
              "lbl_date_of_service".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterMedium8.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              29.00,
            ),
            margin: getMargin(
              top: 3,
              bottom: 9,
            ),
            child: Text(
              "lbl_time_of_service".tr,
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtInterMedium8.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              31.00,
            ),
            width: getHorizontalSize(
              175.00,
            ),
            margin: getMargin(
              top: 3,
            ),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: getHorizontalSize(
                      44.00,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 9,
                      right: 8,
                      bottom: 9,
                    ),
                    decoration: AppDecoration.fillRed900.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_cancel".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterMedium8.copyWith(
                            height: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 7,
                    ),
                    child: Text(
                      "lbl_mechanic".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterMedium8.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: getHorizontalSize(
                      46.00,
                    ),
                    margin: getMargin(
                      right: 44,
                    ),
                    padding: getPadding(
                      top: 6,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.outlineGray600.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_contact".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style:
                              AppStyle.txtRobotoMedium14Deeppurple500.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.10,
                            ),
                            height: getVerticalSize(
                              1.22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: getHorizontalSize(
                      49.00,
                    ),
                    margin: getMargin(
                      left: 35,
                    ),
                    padding: getPadding(
                      top: 6,
                      bottom: 6,
                    ),
                    decoration: AppDecoration.txtOutlineGray600.copyWith(
                      borderRadius: BorderRadiusStyle.txtCircleBorder15,
                    ),
                    child: Text(
                      "lbl_location".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14Deeppurple500.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.10,
                        ),
                        height: getVerticalSize(
                          1.22,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
