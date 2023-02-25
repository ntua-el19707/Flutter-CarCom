import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:random_date/random_date.dart';
import 'package:trial/pages/arguments/formArgummetns.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class argumentsforProfile {
  final String carPlates;
  final String Owner;
  argumentsforProfile(this.Owner, this.carPlates);
}

class Carprof extends StatefulWidget {
  const Carprof({Key? key, required this.Owner, required this.CarPlates})
      : super(key: key);

  final String Owner, CarPlates;

  @override
  State<Carprof> createState() => _CarprofState();
}

double random(int range) {
  return Random().nextDouble() * range;
}

bool validDate(DateTime date) {
  if (date.year < DateTime.now().year) {
    return false;
  } else if (date.year == DateTime.now().year) {
    if (date.month < DateTime.now().month) {
      return false;
    } else if (date.year == DateTime.now().year) {
      if (date.day < DateTime.now().day) {
        return false;
      } else {
        return true;
      }
    } else {
      return true;
    }
  } else {
    return true;
  }
}

DateTime getRandomDate() {
  DateTime rsp;
  rsp = RandomDate.withRange(DateTime.now().year, DateTime.now().year + 1)
      .random();

  return rsp;
}

DateTime NextRandomDate() {
  DateTime rsp;
  rsp = getRandomDate();
  while (!validDate(rsp)) {
    rsp = getRandomDate();
  }
  return rsp;
}

String formatDate(DateTime Date) {
  String rsp = Date.day.toString() +
      "/" +
      Date.month.toString() +
      "/" +
      Date.year.toString();
  return rsp;
}

class _CarprofState extends State<Carprof> {
  final double miles = random(100000);
  final double lservicem = random(50000);
  final double nservicep = random(50000);
  DateTime nmapp = NextRandomDate();
  String getRandom(int length) {
    const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random r = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
  }

  @override
  Widget build(BuildContext context) {
    String owner = widget.Owner;
    String CarPlates = widget.CarPlates;
    String Mechanic = getRandom(15);
    double lservice = miles - lservicem;
    double nservice = miles + nservicep;
    double width = MediaQuery.of(context).size.width;
    double btnwidth = width / 4;
    return Scaffold(
      body: Card(
          margin: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
          child: Container(
            margin: const EdgeInsets.only(
                left: 5.0, right: 0.0, top: 5.0, bottom: 5.0),
            child: Column(
              children: [
                Container(
                  child: Row(children: [
                    Container(
                      child: Image.asset(
                        "images/carDefault.png",
                        width: 100,
                        height: 100,
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
                            CarPlates,
                            style: AppStyle.txtRobotoMedium15Black900,
                          ),
                          Text("Owner:",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14Gray600.copyWith(
                                  letterSpacing: getHorizontalSize(
                                0.10,
                              ))),
                          Text(owner,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium14Gray600.copyWith(
                                  letterSpacing: getHorizontalSize(
                                0.10,
                              )))
                        ])),
                  ]),
                ),
                Row(children: [
                  Container(
                      child: Row(children: [
                    Text("Miles:", style: AppStyle.txtRobotoMedium15Black900),
                    Text(miles.toStringAsFixed(2) + "km",
                        style: AppStyle.txtRobotoMedium15Black900)
                  ])), //next
                ]),
                Row(children: [
                  Container(
                      child: Row(children: [
                    Text("Last Service:",
                        style: AppStyle.txtRobotoMedium15Black900),
                    Text(lservice.toStringAsFixed(2) + "km",
                        style: AppStyle.txtRobotoMedium15Black900)
                  ])),
                ]),
                Row(children: [
                  Container(
                      child: Row(children: [
                    Text("Next Service: ",
                        style: AppStyle.txtRobotoMedium15Black900),
                    Text(nservice.toStringAsFixed(2) + "km",
                        style: AppStyle.txtRobotoMedium15Black900)
                  ])), //next
                ]),
                Row(children: [
                  Container(
                      child: Row(children: [
                    Text("Next mechanic appointment: ",
                        style: AppStyle.txtRobotoMedium15Black900),
                    Text(formatDate(nmapp),
                        style: AppStyle.txtRobotoMedium15Black900)
                  ])), //next
                ]),
                Row(children: [
                  Container(
                      child: Row(children: [
                    Text("Mechanic: ",
                        style: AppStyle.txtRobotoMedium15Black900),
                    Text(Mechanic, style: AppStyle.txtRobotoMedium15Black900)
                  ])), //next
                ]),
                Container(
                    width: width / 2,
                    height: 40.0,
                    child: Column(
                      children: [
                        Container(
                            child: Text(
                          "Rate your Mechanic:",
                          style: AppStyle.txtRobotoMedium15Bold,
                        )),
                        Container(
                          child: RatingBar.builder(
                            initialRating: 0.0,
                            maxRating: 5.0,
                            minRating: 0.0,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemSize: 20.0,
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          //   width: 100,
                          // height: 15,
                        )
                      ],
                    )),
                Container(
                    child: Row(
                      children: [
                        Container(
                          child: CustomButton(
                            onTap: () {
                              Navigator.pushNamed(context, '/carForm',
                                  arguments: argumentsform(owner, CarPlates,
                                      miles, "edit car", Mechanic, nmapp));
                            },
                            height: 40,
                            width: btnwidth,
                            text: "edit",
                            padding: ButtonPadding.PaddingPDA10,
                          ),
                          padding: getPadding(left: 10, right: 10),
                        ),
                        GestureDetector(
                            onTap: () {
                              print("click delete button");
                            },
                            child: Container(
                              decoration: AppDecoration.fillRed900.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder16,
                              ),
                              padding: getPadding(left: 10, right: 10),
                              width: btnwidth,
                              height: 40,
                              child: Text(
                                "Delete",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style:
                                    AppStyle.txtRobotoMedium15Black900.copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              alignment: Alignment.center,
                              margin: getMargin(right: 10),
                            )),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 100),
              ],
              mainAxisSize: MainAxisSize.min,
            ),
          )),
    );
  }
}
