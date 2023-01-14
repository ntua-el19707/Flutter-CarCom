import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle1 extends StatelessWidget {
  AppbarSubtitle1({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Container(
          width: getSize(
            16.00,
          ),
          padding: getPadding(
            left: 4,
            top: 1,
            right: 4,
            bottom: 1,
          ),
          decoration: AppDecoration.txtFillRed900.copyWith(
            borderRadius: BorderRadiusStyle.txtCircleBorder8,
          ),
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRobotoMedium11.copyWith(
              letterSpacing: getHorizontalSize(
                0.50,
              ),
              height: getVerticalSize(
                1.24,
              ),
              color: ColorConstant.whiteA700,
            ),
          ),
        ),
      ),
    );
  }
}
