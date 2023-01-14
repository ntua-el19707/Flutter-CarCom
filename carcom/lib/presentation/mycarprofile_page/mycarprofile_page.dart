import 'controller/mycarprofile_controller.dart';
import 'models/mycarprofile_model.dart';
import 'package:flutter/material.dart';
import 'package:ntua_el18610_s_application1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MycarprofilePage extends StatelessWidget {
  MycarprofileController controller =
      Get.put(MycarprofileController(MycarprofileModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "lbl_miles".tr,
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
                    left: 1,
                  ),
                  child: Text(
                    "lbl_last_service".tr,
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
                Container(
                  height: getVerticalSize(
                    31.00,
                  ),
                  width: getHorizontalSize(
                    155.00,
                  ),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "lbl_next_apoitment".tr,
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
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "msg_suggested_next_service".tr,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
