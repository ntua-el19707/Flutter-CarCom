import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/presentation/mycarprofile_one_page/mycarprofile_one_page.dart';

class MycarprofileOneTabContainerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: getVerticalSize(
                  348.00,
                ),
                width: getHorizontalSize(
                  178.00,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
                padding: getPadding(
                  left: 10,
                  top: 21,
                  right: 10,
                  bottom: 21,
                ),
                decoration: AppDecoration.fillWhiteA700,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage1,
                      height: getVerticalSize(
                        78.00,
                      ),
                      width: getHorizontalSize(
                        44.00,
                      ),
                      alignment: Alignment.topLeft,
                      margin: getMargin(
                        left: 3,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: getPadding(
                          top: 3,
                          right: 3,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                right: 29,
                              ),
                              child: Text(
                                "Car Name",
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
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                                right: 41,
                              ),
                              child: Text(
                                "owner",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtRobotoMedium14Bluegray100.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.10,
                                  ),
                                  height: getVerticalSize(
                                    1.22,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                129.00,
                              ),
                              margin: getMargin(
                                top: 35,
                              ),
                              child: TabBar(
                                //TODO: Please add tab controller
                                tabs: [
                                  Tab(
                                    text: "edit car",
                                  ),
                                  Tab(
                                    text: "Delete",
                                  ),
                                ],
                                labelColor: ColorConstant.deepPurple500,
                                unselectedLabelColor: ColorConstant.whiteA700,
                                indicator: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      19.00,
                                    ),
                                  ),
                                  border: Border.all(
                                    color: ColorConstant.gray600,
                                    width: getHorizontalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                top: 7,
                              ),
                              height: getVerticalSize(
                                64.00,
                              ),
                              child: TabBarView(
                                //TODO: Please add tab controller
                                children: [
                                  MycarprofileOnePage(),
                                  MycarprofileOnePage(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
