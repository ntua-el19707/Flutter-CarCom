import '../controller/mycars_four_controller.dart';
import '../models/mycars_four_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class MycarsFourItemWidget extends StatelessWidget {
  MycarsFourItemWidget(this.mycarsFourItemModelObj, {this.onTapCarprofile});

  MycarsFourItemModel mycarsFourItemModelObj;

  var controller = Get.find<MycarsFourController>();

  VoidCallback? onTapCarprofile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 5,
        bottom: 5,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: getVerticalSize(
              61.00,
            ),
            width: getHorizontalSize(
              42.00,
            ),
            margin: getMargin(
              left: 5,
              bottom: 4,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 2,
              bottom: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_car_name".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoMedium14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.10,
                    ),
                    height: getVerticalSize(
                      1.22,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 9,
                    top: 15,
                  ),
                  child: Text(
                    "lbl_owner".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium14Bluegray100.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.10,
                      ),
                      height: getVerticalSize(
                        1.22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomButton(
            height: 46,
            width: 79,
            text: "lbl_car_profile".tr,
            margin: getMargin(
              top: 6,
              bottom: 12,
            ),
            onTap: onTapCarprofile,
          ),
          Container(
            height: getVerticalSize(
              39.00,
            ),
            width: getHorizontalSize(
              90.00,
            ),
            margin: getMargin(
              top: 11,
              bottom: 14,
            ),
            padding: getPadding(
              left: 17,
              right: 17,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Stack(
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgVolume,
                  height: getVerticalSize(
                    32.00,
                  ),
                  width: getHorizontalSize(
                    54.00,
                  ),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
