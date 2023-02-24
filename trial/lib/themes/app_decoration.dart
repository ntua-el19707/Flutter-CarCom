import 'package:flutter/material.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class AppDecoration {
  static BoxDecoration get txtOutlineGray600 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray600,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillDeeppurple500 => BoxDecoration(
        color: ColorConstant.deepPurple500,
      );
  static BoxDecoration get fillblue => BoxDecoration(
        color: ColorConstant.lightBlue,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBluegray10001 => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ColorConstant.blueGray10001,
            width: getHorizontalSize(
              1.00,
            ),
          ),
        ),
      );
  static BoxDecoration get outlineDownGrey => BoxDecoration(
      border: Border(
          bottom: BorderSide(
              color: ColorConstant.gray600,
              width: getHorizontalSize(
                1.00,
              ))));
  static BoxDecoration get outlineDeeppurple500 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.deepPurple500,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get txtFillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get fillWhiteA70001 => BoxDecoration(
        color: ColorConstant.whiteA70001,
      );
  static BoxDecoration get fillDeeppurple50 => BoxDecoration(
        color: ColorConstant.deepPurple50,
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
  static BoxDecoration get fillYellow400 => BoxDecoration(
        color: ColorConstant.yellow400,
      );
  static BoxDecoration get fillRed900 => BoxDecoration(
        color: ColorConstant.red900,
      );
  static BoxDecoration get fillRedA700 => BoxDecoration(
        color: ColorConstant.redA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius txtCircleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );

  static BorderRadius roundedBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28.00,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius customBorderTL4 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        4.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        4.00,
      ),
    ),
  );

  static BorderRadius circleBorder19 = BorderRadius.circular(
    getHorizontalSize(
      19.00,
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
