import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial/themes/app_decoration.dart';
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
String miles = "50000";
String lservice = "45000";
String nservice = "60000";
String nmapp = "02/03/23";
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
                     Column(children: [Container(
                     child: Text(
                     "Car plates",
                      style: AppStyle.txtRobotoRegular20,
                     )),

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
              style: AppStyle.txtRobotoMedium24Gray600.copyWith(
              letterSpacing: getHorizontalSize(
              0.10,
                 ),
                height: getVerticalSize(
                  1.22,
                  ),
              ),
             ),),
      )]
                     ),
    ]),
    ),
             Row(children: [Container(
               child: Row(
                children: [
                   Text(
                  "Miles:",
                   style: AppStyle.txtRobotoRegular20,),
                   Text(
                         miles,
                          style: AppStyle.txtRobotoRegular20,)]
               )),//next
             ]),

              Row(children: [Container(
                  child: Row(
                      children: [
                        Text(
                          "Last Service:",
                          style: AppStyle.txtRobotoRegular20,),
                        Text(
                          lservice,
                          style: AppStyle.txtRobotoRegular20,)]
                  )),
              ]),
              Row(children: [Container(
                  child: Row(
                      children: [
                        Text(
                          "Next Service: ",
                          style: AppStyle.txtRobotoRegular20,),
                        Text(
                          nservice,
                          style: AppStyle.txtRobotoRegular20,)]
                  )),//next
              ]),
              Row(children: [Container(
                  child: Row(
                      children: [
                        Text(
                          "Next mechanic appointment: ",
                          style: AppStyle.txtRobotoRegular20,),
                        Text(
                          nmapp,
                          style: AppStyle.txtRobotoRegular20,)]
                  )),//next
              ]),


              Container(
                  child: Row(
                    children: [
                      Container(
                        child: CustomButton(
                          height: 40,
                          width: 135,
                          text: "edit",
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
                  height: 100),
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),
    );
  }
}




