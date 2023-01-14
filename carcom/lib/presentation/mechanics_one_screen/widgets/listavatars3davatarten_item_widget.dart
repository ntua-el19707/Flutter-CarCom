import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listavatars3davatartenItemWidget extends StatelessWidget {
  Listavatars3davatartenItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: getPadding(
              top: 7,
              bottom: 7,
            ),
            decoration: AppDecoration.fillWhiteA700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatars3davatar10,
                  height: getVerticalSize(
                    68.00,
                  ),
                  width: getHorizontalSize(
                    36.00,
                  ),
                  margin: getMargin(
                    bottom: 4,
                  ),
                ),
                Container(
                  height: getSize(
                    42.00,
                  ),
                  width: getSize(
                    42.00,
                  ),
                  margin: getMargin(
                    left: 15,
                    top: 4,
                    bottom: 26,
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                                bottom: 2,
                              ),
                              child: Text(
                                "Rating:",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoMedium8.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.10,
                                  ),
                                  height: getVerticalSize(
                                    2.13,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgStar1,
                              height: getVerticalSize(
                                14.00,
                              ),
                              width: getHorizontalSize(
                                9.00,
                              ),
                              margin: getMargin(
                                left: 6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: getHorizontalSize(
                            35.00,
                          ),
                          child: Text(
                            "Mechanic Name",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtRobotoMedium8Black900.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.10,
                              ),
                              height: getVerticalSize(
                                2.13,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 40,
                    top: 5,
                    bottom: 4,
                  ),
                  padding: getPadding(
                    left: 5,
                    top: 10,
                    right: 5,
                    bottom: 10,
                  ),
                  decoration: AppDecoration.outlineGray600.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder31,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          75.00,
                        ),
                        margin: getMargin(
                          top: 2,
                        ),
                        child: Text(
                          "Book\nAppoitment",
                          maxLines: null,
                          textAlign: TextAlign.center,
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
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  height: 63,
                  width: 74,
                  text: "contact",
                  margin: getMargin(
                    left: 6,
                    top: 5,
                    bottom: 4,
                  ),
                  shape: ButtonShape.RoundedBorder31,
                  padding: ButtonPadding.PaddingT22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
