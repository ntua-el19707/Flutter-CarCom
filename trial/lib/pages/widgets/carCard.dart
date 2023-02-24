import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/carprofile.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class MyCarCard extends StatefulWidget {
  const MyCarCard(
      {super.key,
      required this.Owner,
      required this.carPlates,
      required this.tracking});
  final bool tracking;
  final String Owner;
  final String carPlates;
  @override
  State<MyCarCard> createState() => _MyCarCardState();
}

class _MyCarCardState extends State<MyCarCard> {
  late bool tracking = widget.tracking;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Card(
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
                        width: MediaQuery.of(context).size.width / 3,
                        child: Column(children: [
                          Text(
                            "Car Plates:",
                            style: AppStyle.txtRobotoMedium15Bold,
                          ),
                          Text(
                            widget.carPlates,
                            style: AppStyle.txtRobotoMedium15Black900,
                          ),
                          Text("Owner:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14Gray600.copyWith(
                                  letterSpacing: getHorizontalSize(
                                0.10,
                              ))),
                          Text(widget.Owner,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14Gray600.copyWith(
                                  letterSpacing: getHorizontalSize(
                                0.10,
                              )))
                        ])),
                    Flexible(fit: FlexFit.tight, child: SizedBox()),
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
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/car',
                                arguments: argumentsforProfile(
                                    widget.Owner, widget.carPlates));
                          },
                          width: MediaQuery.of(context).size.width / 4,
                          height: 40,
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
                        width: MediaQuery.of(context).size.width / 4,
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
          margin: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
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
