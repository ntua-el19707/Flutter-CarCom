import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';
import 'package:ntua_el18610_s_application1/widgets/custom_button.dart';

// ignore: must_be_immutable
class MycarsItemWidget extends StatelessWidget {
  MycarsItemWidget({this.onTapCarprofile});

  VoidCallback? onTapCarprofile;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        top: 4,
        bottom: 4,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1,
            height: getVerticalSize(
              55.00,
            ),
            width: getHorizontalSize(
              43.00,
            ),
            margin: getMargin(
              left: 5,
              bottom: 3,
            ),
          ),
          Padding(
            padding: getPadding(
              top: 1,
              bottom: 11,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Car name",
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
                    top: 12,
                  ),
                  child: Text(
                    "owner",
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
            height: 42,
            width: 80,
            text: "Car Profile",
            margin: getMargin(
              top: 5,
              bottom: 11,
            ),
            onTap: () => onTapCarprofile(context),
          ),
          Container(
            height: getVerticalSize(
              36.00,
            ),
            width: getHorizontalSize(
              90.00,
            ),
            margin: getMargin(
              top: 10,
              bottom: 13,
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
                    29.00,
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
