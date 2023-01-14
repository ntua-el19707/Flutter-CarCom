import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/presentation/mycarprofile_page/mycarprofile_page.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ntua_el18610_s_application1/widgets/app_bar/custom_app_bar.dart';

class MycarprofileTabContainerScreen extends StatelessWidget {
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
            body: Container(
                height: getVerticalSize(348.00),
                width: getHorizontalSize(178.00),
                margin: getMargin(left: 19, top: 26, bottom: 5),
                padding: getPadding(left: 10, top: 21, right: 10, bottom: 21),
                decoration: AppDecoration.fillWhiteA700,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: getVerticalSize(78.00),
                      width: getHorizontalSize(44.00),
                      alignment: Alignment.topLeft,
                      margin: getMargin(left: 3)),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: getPadding(top: 3, right: 3),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 29),
                                    child: Text("Car Name",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.10),
                                                height:
                                                    getVerticalSize(1.22)))),
                                Padding(
                                    padding: getPadding(top: 11, right: 41),
                                    child: Text("owner",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoMedium14Bluegray100
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.10),
                                                height:
                                                    getVerticalSize(1.22)))),
                                Container(
                                    width: getHorizontalSize(129.00),
                                    margin: getMargin(top: 35),
                                    child: TabBar(
                                        tabs: [
                                          Tab(text: "edit car"),
                                          Tab(text: "Delete")
                                        ],
                                        labelColor: ColorConstant.whiteA700,
                                        unselectedLabelColor:
                                            ColorConstant.whiteA700,
                                        indicator: BoxDecoration(
                                            color: ColorConstant.deepPurple500,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(19.00))))),
                                Container(
                                    margin: getMargin(top: 7),
                                    height: getVerticalSize(64.00),
                                    child: TabBarView(children: [
                                      MycarprofilePage(),
                                      MycarprofilePage()
                                    ]))
                              ])))
                ]))));
  }

  onTapSegment1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mycarsFourScreen);
  }
}
