import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class MyCarCard extends StatefulWidget {
  const MyCarCard({super.key});

  @override
  State<MyCarCard> createState() => _MyCarCardState();
}

class _MyCarCardState extends State<MyCarCard> {
  bool tracking = true;
  String owner = "Madara";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    "images/carDefault.png",
                    width: 70,
                    height: 70,
                  ),
                  padding: EdgeInsets.all(16.0),
                ),
                Container(
                    child: Text(
                  "Car plates",
                  style: AppStyle.txtRobotoMedium15Black900,
                )),
                Flexible(fit: FlexFit.tight, child: SizedBox()),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: getPadding(
                      top: 11,
                      right: 41,
                    ),
                    child: Text(
                      owner,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium14Gray600.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.10,
                        ),
                        height: getVerticalSize(
                          1.22,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Switch(
                      value: tracking,
                      activeColor: Colors.green,
                      onChanged: (bool value) {
                        // This is called when the user toggles the switch.
                        setState(() {
                          tracking = value;
                        });
                      }),
                  alignment: Alignment.centerRight,
                )
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: 100,
          ),
          Container(
              child: Row(
                children: [
                  Container(
                    child: CustomButton(
                      height: 40,
                      width: 135,
                      text: "profile",
                      padding: ButtonPadding.PaddingPDA10,
                    ),
                    padding: getPadding(left: 10, right: 10),
                  ),
                  Flexible(fit: FlexFit.tight, child: SizedBox()),
                  Container(
                    decoration: AppDecoration.fillRed900.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    padding: getPadding(left: 10, right: 10),
                    width: 135,
                    height: 40,
                    child: Text(
                      "Delete",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRobotoMedium15Black900.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                    margin: getMargin(right: 10),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 100)
        ],
        mainAxisSize: MainAxisSize.min,
      ),
      margin:
          const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
    ));
  }
}

/* Row(
          children: [
            Image.asset(
              "images/carDefault.png",
              width: 70,
              height: 70,
            ),
           ),
            Container(
              child: Switch(
                  value: tracking,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      tracking = value;
                    });
                  }),
              alignment: Alignment.centerRight,
            )
          ],
        ),
      ), */
