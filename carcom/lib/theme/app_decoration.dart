import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineGray600 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillYellow400 => BoxDecoration(
        color: ColorConstant.yellow400,
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillDeeppurple50 => BoxDecoration(
        color: ColorConstant.deepPurple50,
      );
  static BoxDecoration get fillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get txtFillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get outlineGray600 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray10001 => BoxDecoration(
        color: ColorConstant.blueGray10001,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder31 = BorderRadius.circular(
    getHorizontalSize(
      31.00,
    ),
  );

  static BorderRadius txtCircleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius circleBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );
}
