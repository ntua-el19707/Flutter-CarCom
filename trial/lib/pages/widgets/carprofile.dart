import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class Carprof extends StatefulWidget {
  const Carprof({Key? key}) : super(key: key);

  @override
  State<Carprof> createState() => _CarprofState();
}
String owner = "sakis";
class _CarprofState extends State<Carprof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
          margin:
    const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                      "images/carDefault.png",
                       width: 100,
                        height: 100,
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
                   right: 35,
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
             ),),
      ),



    ]),
    ),
              Container(
                  child: Row(
                    children: [CustomButton()],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 100)
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),
    );
  }
}




