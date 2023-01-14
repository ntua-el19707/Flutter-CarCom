import 'controller/car_customize_window_decals_controller.dart';
import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ntua_el18610_s_application1/widgets/custom_icon_button.dart';

class CarCustomizeWindowDecalsScreen
    extends GetWidget<CarCustomizeWindowDecalsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(107.00),
                leadingWidth: 78,
                leading: GestureDetector(
                    onTap: () {
                      onTapSegment1();
                    },
                    child: Container(
                        margin: getMargin(left: 14, top: 12, bottom: 43),
                        decoration: BoxDecoration(
                            color: ColorConstant.deepPurple50,
                            borderRadius: BorderRadius.circular(
                                getHorizontalSize(16.00))),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              AppbarImage(
                                  height: getSize(24.00),
                                  width: getSize(24.00),
                                  svgPath: ImageConstant.imgIconGray900,
                                  margin:
                                      getMargin(left: 20, top: 4, right: 19)),
                              AppbarSubtitle(
                                  text: "lbl_my_cars".tr,
                                  margin: getMargin(left: 9, top: 9, right: 9))
                            ]))),
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
                          getPadding(left: 24, top: 14, right: 11, bottom: 28),
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
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: getHorizontalSize(343.00),
                        margin: getMargin(top: 2, right: 10, bottom: 5),
                        child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                  alignment: Alignment.topCenter,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapStackcarcounter();
                                      },
                                      child: Container(
                                          height: getVerticalSize(527.00),
                                          width: getHorizontalSize(343.00),
                                          padding: getPadding(
                                              left: 7,
                                              top: 9,
                                              right: 7,
                                              bottom: 9),
                                          decoration:
                                              AppDecoration.fillBluegray10001,
                                          child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      431.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      67.00),
                                                              margin: getMargin(
                                                                  top: 21),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .bottomRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        child: Padding(
                                                                            padding: getPadding(left: 5, right: 6),
                                                                            child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgMenu, height: getSize(24.00), width: getSize(24.00)),
                                                                              CustomIconButton(height: 56, width: 56, margin: getMargin(top: 16), child: CustomImageView(svgPath: ImageConstant.imgEdit)),
                                                                              Card(
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  elevation: 0,
                                                                                  margin: getMargin(top: 45),
                                                                                  color: ColorConstant.deepPurple50,
                                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder16),
                                                                                  child: Container(
                                                                                      height: getVerticalSize(32.00),
                                                                                      width: getHorizontalSize(56.00),
                                                                                      padding: getPadding(left: 16, top: 4, right: 16, bottom: 4),
                                                                                      decoration: AppDecoration.fillDeeppurple50.copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
                                                                                      child: Stack(children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgIconGray900, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.center)
                                                                                      ]))),
                                                                              Container(width: getHorizontalSize(42.00), margin: getMargin(top: 4), child: Text("lbl_color_change".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtRobotoMedium12.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14)))),
                                                                              CustomImageView(svgPath: ImageConstant.imgIconGray800, height: getSize(24.00), width: getSize(24.00), margin: getMargin(top: 6)),
                                                                              Align(
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: Container(
                                                                                      height: getVerticalSize(32.00),
                                                                                      width: getHorizontalSize(29.00),
                                                                                      margin: getMargin(top: 36, right: 10),
                                                                                      child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                        CustomImageView(svgPath: ImageConstant.imgComputer, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.topLeft),
                                                                                        Align(alignment: Alignment.bottomCenter, child: Text("lbl_rims".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Black900.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14))))
                                                                                      ]))),
                                                                              Container(
                                                                                  height: getVerticalSize(31.00),
                                                                                  width: getHorizontalSize(38.00),
                                                                                  margin: getMargin(top: 27),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgTicket, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.topCenter),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Text("lbl_decals".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Black900.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14))))
                                                                                  ])),
                                                                              CustomImageView(svgPath: ImageConstant.imgIcon, height: getSize(24.00), width: getSize(24.00), margin: getMargin(top: 28))
                                                                            ]))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomRight,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(right: 17),
                                                                            child: Text("lbl_save".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Black900.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14))))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(bottom: 169),
                                                                            child: Text("lbl_window_tint".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Black90001.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14)))))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 88,
                                                                      bottom:
                                                                          419),
                                                              child: Text(
                                                                  "lbl_car_1"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold27
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.00))))
                                                        ])),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgImage1,
                                                    height:
                                                        getVerticalSize(249.00),
                                                    width: getHorizontalSize(
                                                        243.00),
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    margin: getMargin(
                                                        right: 6, bottom: 110))
                                              ])))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle12322,
                                  height: getVerticalSize(328.00),
                                  width: getHorizontalSize(238.00),
                                  alignment: Alignment.bottomRight,
                                  margin: getMargin(right: 29))
                            ]))))));
  }

  onTapStackcarcounter() {
    Get.toNamed(AppRoutes.carCustomizeWindowTintOneScreen);
  }

  onTapSegment1() {
    Get.toNamed(AppRoutes.mycarsFourScreen);
  }
}
