import '../mycars_two_screen/widgets/mycars_two_item_widget.dart';
import 'controller/mycars_two_controller.dart';
import 'models/mycars_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ntua_el18610_s_application1/widgets/custom_button.dart';

class MycarsTwoScreen extends GetWidget<MycarsTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(107.00),
                leadingWidth: 80,
                leading: Container(
                    margin: getMargin(left: 16, top: 12, bottom: 43),
                    decoration: BoxDecoration(
                        color: ColorConstant.deepPurple50,
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(16.00))),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarImage(
                              height: getSize(24.00),
                              width: getSize(24.00),
                              svgPath: ImageConstant.imgIconGray900,
                              margin: getMargin(left: 20, top: 4, right: 19)),
                          AppbarSubtitle(
                              text: "lbl_my_cars".tr,
                              margin: getMargin(left: 9, top: 9, right: 9))
                        ])),
                title: Padding(
                    padding: getPadding(left: 22),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarImage(
                              height: getSize(24.00),
                              width: getSize(24.00),
                              svgPath: ImageConstant.imgIconGray800,
                              margin: getMargin(left: 18, right: 19)),
                          AppbarTitle(
                              text: "lbl_my_appointments".tr,
                              margin: getMargin(top: 8))
                        ])),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 24, top: 14, right: 7, bottom: 28),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                                padding: getPadding(left: 18, right: 20),
                                child: Row(children: [
                                  AppbarImage(
                                      height: getSize(24.00),
                                      width: getSize(24.00),
                                      svgPath: ImageConstant.imgIconGray800,
                                      margin: getMargin(top: 2)),
                                  Container(
                                      height: getVerticalSize(26.00),
                                      width: getHorizontalSize(28.00),
                                      margin: getMargin(left: 61),
                                      child: Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            AppbarImage(
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                svgPath: ImageConstant
                                                    .imgIconGray800,
                                                margin: getMargin(
                                                    top: 2, right: 4)),
                                            AppbarSubtitle1(
                                                text: "lbl_3".tr,
                                                margin: getMargin(
                                                    left: 12, bottom: 10))
                                          ]))
                                ])),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Row(children: [
                                  AppbarTitle(text: "lbl_car_customize".tr),
                                  AppbarTitle(
                                      text: "lbl_notifications".tr,
                                      margin: getMargin(left: 18, bottom: 15))
                                ]))
                          ]))
                ],
                styleType: Style.bgFillWhiteA70001),
            body: Container(
                padding: getPadding(left: 3, top: 29, right: 3, bottom: 29),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 38),
                              child: Text("msg_select_one_of_your".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium14.copyWith(
                                      letterSpacing: getHorizontalSize(0.10),
                                      height: getVerticalSize(1.22))))),
                      Container(
                          width: getHorizontalSize(52.00),
                          margin: getMargin(top: 8, right: 13),
                          child: Text("msg_milage_tracking".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtRobotoMedium14.copyWith(
                                  letterSpacing: getHorizontalSize(0.10),
                                  height: getVerticalSize(1.22)))),
                      Padding(
                          padding: getPadding(left: 20),
                          child: Obx(() => ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.mycarsTwoModelObj.value
                                  .mycarsTwoItemList.length,
                              itemBuilder: (context, index) {
                                MycarsTwoItemModel model = controller
                                    .mycarsTwoModelObj
                                    .value
                                    .mycarsTwoItemList[index];
                                return MycarsTwoItemWidget(model,
                                    onTapCarprofile: onTapCarprofile,
                                    onTapStackcontrast: onTapStackcontrast);
                              })))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 15, right: 19, bottom: 29),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomButton(
                      height: 46,
                      width: 317,
                      text: "lbl_add_new_car".tr,
                      padding: ButtonPadding.PaddingAll14)
                ]))));
  }

  onTapCarprofile() {
// TODO: implement Actions
  }
  onTapStackcontrast() {
    Get.toNamed(AppRoutes.mycarsFourScreen);
  }
}
