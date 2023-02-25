import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/arguments/argumentsForMessenger.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class appoitmentItem extends StatefulWidget {
  const appoitmentItem(
      {super.key,
      required this.Plates,
      required this.Mechanic,
      required this.lasts,
      required this.service});
  final String Plates;
  final DateTime service;
  final DateTime lasts;
  final String Mechanic;
  @override
  State<appoitmentItem> createState() => _appoitmentItemState();
}

class _appoitmentItemState extends State<appoitmentItem> {
  //String CarPlates = widget.Plates;
  DateTime service = DateTime.now();
  DateTime lastservice = DateTime.now();
  String Mechanic = "";

  @override
  Widget build(BuildContext context) {
    double size = (MediaQuery.of(context).size.width - 10) / 3;

    return Container(
        margin: getMargin(all: 0),
        width: (MediaQuery.of(context).size.width),
        height: 143.0,
        child: Card(
          child: Column(
            children: [
              Container(
                child: Text("Booking:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 255, 1.0))),
              ),
              Row(children: [
                Container(
                    width: (size),
                    child: Column(children: [
                      Row(children: [
                        Text("Car Plates:",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                      Row(children: [Text(widget.Plates)])
                    ])),
                Container(
                    width: size,
                    child: Column(children: [
                      Row(children: [
                        Text("Service at:",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                      Row(children: [
                        Text(widget.service.toLocal().day.toString() +
                            "/" +
                            widget.service.toLocal().month.toString() +
                            "/" +
                            widget.service.toLocal().year.toString())
                      ])
                    ])),
                Container(
                    width: size,
                    child: Column(children: [
                      Row(children: [
                        Text("last Service:",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ]),
                      Row(children: [
                        Text(widget.lasts.toLocal().day.toString() +
                            "/" +
                            widget.lasts.toLocal().month.toString() +
                            "/" +
                            widget.lasts.toLocal().year.toString())
                      ])
                    ])),
              ]),
              Row(children: [
                Container(
                  width: (MediaQuery.of(context).size.width - 150),
                  child: Column(children: [
                    Row(children: [
                      Text("Mechanic:",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
                    Row(children: [Text(widget.Mechanic)]),
                  ]),
                ),
                Container(
                    width: (30.0),
                    height: (30.0),
                    child: FloatingActionButton(
                      tooltip: 'chat', // used by assistive technologies
                      onPressed: () {
                        Navigator.pushNamed(context, '/mesenger',
                            arguments: messengerSrgummnets(widget.Mechanic));
                      },
                      child: Icon(Icons.chat),
                    )),
                Container(
                    width: (30),
                    height: (30),
                    margin: getMargin(left: 10, right: 5.0),
                    child: FloatingActionButton(
                      tooltip: 'location', // used by assistive technologies
                      onPressed: () {
                        print("open Google maps and find  location");
                      },
                      child: Icon(Icons.location_on),
                    ))
              ]),
              Container(
                  child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      print("Cancel Apoitment");
                    },
                    child: Container(
                      decoration: AppDecoration.fillRed900.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder16,
                      ),
                      //  padding: getPadding(left: 10, right: 10),
                      width: (MediaQuery.of(context).size.width / 2),
                      height: 30,

                      child: Text(
                        "Cancel",
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
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
