import '../mechanics_one_screen/widgets/listavatars3davatarten_item_widget.dart';
import '../mechanics_one_screen/widgets/listcarname_item_widget.dart';
import 'controller/mechanics_one_controller.dart';
import 'models/listavatars3davatarten_item_model.dart';
import 'models/listcarname_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/custom_app_bar.dart';

class MechanicsOneScreen extends GetWidget<MechanicsOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            107.00,
          ),
          leadingWidth: 78,
          leading: Container(
            margin: getMargin(
              left: 14,
              top: 12,
              bottom: 43,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.deepPurple50,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarImage(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  svgPath: ImageConstant.imgIconGray900,
                  margin: getMargin(
                    left: 20,
                    top: 4,
                    right: 19,
                  ),
                ),
                AppbarSubtitle(
                  text: "lbl_my_cars".tr,
                  margin: getMargin(
                    left: 9,
                    top: 9,
                    right: 9,
                  ),
                ),
              ],
            ),
          ),
          title: Padding(
            padding: getPadding(
              left: 22,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppbarImage(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  svgPath: ImageConstant.imgIconGray800,
                  margin: getMargin(
                    left: 18,
                    right: 19,
                  ),
                ),
                AppbarTitle(
                  text: "lbl_my_appointments".tr,
                  margin: getMargin(
                    top: 8,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: getPadding(
                left: 24,
                top: 14,
                right: 9,
                bottom: 28,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 18,
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        AppbarImage(
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          svgPath: ImageConstant.imgIconGray800,
                          margin: getMargin(
                            top: 2,
                          ),
                        ),
                        Container(
                          height: getVerticalSize(
                            26.00,
                          ),
                          width: getHorizontalSize(
                            28.00,
                          ),
                          margin: getMargin(
                            left: 61,
                          ),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              AppbarImage(
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                                svgPath: ImageConstant.imgIconGray800,
                                margin: getMargin(
                                  top: 2,
                                  right: 4,
                                ),
                              ),
                              AppbarSubtitle1(
                                text: "lbl_3".tr,
                                margin: getMargin(
                                  left: 12,
                                  bottom: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 8,
                    ),
                    child: Row(
                      children: [
                        AppbarTitle(
                          text: "lbl_car_customize".tr,
                        ),
                        AppbarTitle(
                          text: "lbl_notifications".tr,
                          margin: getMargin(
                            left: 18,
                            bottom: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          styleType: Style.bgFillWhiteA70001,
        ),
        body: Container(
          padding: getPadding(
            left: 14,
            top: 5,
            right: 14,
            bottom: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  top: 11,
                  right: 8,
                ),
                child: Obx(
                  () => ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller
                        .mechanicsOneModelObj.value.listcarnameItemList.length,
                    itemBuilder: (context, index) {
                      ListcarnameItemModel model = controller
                          .mechanicsOneModelObj
                          .value
                          .listcarnameItemList[index];
                      return ListcarnameItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 2,
                  top: 25,
                  right: 8,
                ),
                child: Obx(
                  () => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(
                          1.00,
                        ),
                      );
                    },
                    itemCount: controller.mechanicsOneModelObj.value
                        .listavatars3davatartenItemList.length,
                    itemBuilder: (context, index) {
                      Listavatars3davatartenItemModel model = controller
                          .mechanicsOneModelObj
                          .value
                          .listavatars3davatartenItemList[index];
                      return Listavatars3davatartenItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
