import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTap});

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
          width: getHorizontalSize(
            62.00,
          ),
          child: Text(
            text,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtRobotoMedium12Gray800.copyWith(
              letterSpacing: getHorizontalSize(
                0.50,
              ),
              height: getVerticalSize(
                1.14,
              ),
              color: ColorConstant.gray800,
            ),
          ),
        ),
      ),
    );
  }
}
