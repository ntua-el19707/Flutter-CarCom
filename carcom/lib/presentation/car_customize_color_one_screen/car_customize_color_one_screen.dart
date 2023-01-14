import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ntua_el18610_s_application1/widgets/custom_icon_button.dart';

class CarCustomizeColorOneScreen extends StatelessWidget {
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
                      onTapSegment1(context);
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
                                  text: "My cars",
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
                              text: "My appointments",
                              margin: getMargin(top: 8))
                        ])),
                actions: [
                  Padding(
                      padding:
                          getPadding(left: 24, top: 14, right: 9, bottom: 28),
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
                                                text: "3",
                                                margin: getMargin(
                                                    left: 12, bottom: 10))
                                          ]))
                                ])),
                            Padding(
                                padding: getPadding(top: 8),
                                child: Row(children: [
                                  AppbarTitle(text: "Car customize"),
                                  AppbarTitle(
                                      text: "Notifications",
                                      margin: getMargin(left: 18, bottom: 15))
                                ]))
                          ]))
                ],
                styleType: Style.bgFillWhiteA70001),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(762.00),
                        width: getHorizontalSize(345.00),
                        margin: getMargin(top: 2, right: 6, bottom: 5),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: getVerticalSize(288.00),
                                  width: getHorizontalSize(277.00),
                                  padding: getPadding(
                                      left: 4, top: 25, right: 4, bottom: 25),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Stack(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage2,
                                        height: getVerticalSize(226.00),
                                        width: getHorizontalSize(246.00),
                                        alignment: Alignment.bottomRight)
                                  ]))),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: getVerticalSize(527.00),
                                  width: getHorizontalSize(345.00),
                                  padding: getPadding(all: 9),
                                  decoration: AppDecoration.fillBluegray10001,
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height: getVerticalSize(
                                                          431.00),
                                                      width: getHorizontalSize(
                                                          67.00),
                                                      margin:
                                                          getMargin(top: 21),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left: 5,
                                                                        right:
                                                                            6),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMenu,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00)),
                                                                          CustomIconButton(
                                                                              height: 56,
                                                                              width: 56,
                                                                              margin: getMargin(top: 16),
                                                                              child: CustomImageView(svgPath: ImageConstant.imgEdit)),
                                                                          Card(
                                                                              clipBehavior: Clip.antiAlias,
                                                                              elevation: 0,
                                                                              margin: getMargin(top: 45),
                                                                              color: ColorConstant.deepPurple50,
                                                                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(16.00))),
                                                                              child: Container(
                                                                                  height: getVerticalSize(32.00),
                                                                                  width: getHorizontalSize(56.00),
                                                                                  padding: getPadding(left: 16, top: 4, right: 16, bottom: 4),
                                                                                  decoration: AppDecoration.fillDeeppurple50.copyWith(borderRadius: BorderRadiusStyle.circleBorder16),
                                                                                  child: Stack(children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgIconGray900, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.center)
                                                                                  ]))),
                                                                          Container(
                                                                              width: getHorizontalSize(42.00),
                                                                              margin: getMargin(top: 4),
                                                                              child: Text("Color change", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtRobotoMedium12.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14)))),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgIconGray800,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00),
                                                                              margin: getMargin(top: 6)),
                                                                          Align(
                                                                              alignment: Alignment.centerRight,
                                                                              child: Container(
                                                                                  height: getVerticalSize(32.00),
                                                                                  width: getHorizontalSize(29.00),
                                                                                  margin: getMargin(top: 36, right: 10),
                                                                                  child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgComputer, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.topLeft),
                                                                                    Align(alignment: Alignment.bottomCenter, child: Text("Rims", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Black900.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14))))
                                                                                  ]))),
                                                                          Container(
                                                                              height: getVerticalSize(31.00),
                                                                              width: getHorizontalSize(38.00),
                                                                              margin: getMargin(top: 27),
                                                                              child: Stack(alignment: Alignment.bottomCenter, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgTicket, height: getSize(24.00), width: getSize(24.00), alignment: Alignment.topCenter),
                                                                                Align(alignment: Alignment.bottomCenter, child: Text("Decals", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium12Black900.copyWith(letterSpacing: getHorizontalSize(0.50), height: getVerticalSize(1.14))))
                                                                              ])),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgIcon,
                                                                              height: getSize(24.00),
                                                                              width: getSize(24.00),
                                                                              margin: getMargin(top: 28))
                                                                        ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        right:
                                                                            17),
                                                                    child: Text(
                                                                        "Save",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtRobotoMedium12Black900.copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.50),
                                                                            height: getVerticalSize(1.14))))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        bottom:
                                                                            169),
                                                                    child: Text(
                                                                        " window tint",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle.txtRobotoMedium12Black90001.copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.50),
                                                                            height: getVerticalSize(1.14)))))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 88,
                                                          bottom: 419),
                                                      child: Text("Car 1",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterBold27
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.00))))
                                                ])),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgImage1,
                                            height: getVerticalSize(249.00),
                                            width: getHorizontalSize(243.00),
                                            alignment: Alignment.bottomRight,
                                            margin: getMargin(
                                                right: 4, bottom: 110))
                                      ])))
                        ]))))));
  }

  onTapSegment1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mycarsFourScreen);
  }
}
