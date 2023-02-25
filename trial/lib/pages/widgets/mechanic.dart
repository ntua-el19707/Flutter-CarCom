import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/arguments/argumentsForMessenger.dart';
import 'package:trial/pages/arguments/argumetsForBookin.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class Mechanic extends StatefulWidget {
  const Mechanic(
      {super.key,
      required this.name,
      required this.distance,
      required this.rate});
  final String name;
  final double rate;
  final double distance;
  @override
  State<Mechanic> createState() => _MechanicState();
}

class _MechanicState extends State<Mechanic> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 160,
        child: Card(
          margin: const EdgeInsets.only(
              left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
          child: Column(children: [
            Container(
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "images/mechanicDefault.png",
                      width: 50,
                      height: 65,
                    ),
                    padding: EdgeInsets.all(16.0),
                  ),
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Text(
                              widget.name,
                              style: AppStyle.txtRobotoMedium14,
                            ),
                          )),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Container(
                                child: Text(
                              "Rating",
                              style: AppStyle.txtRobotoMedium14Gray600,
                            )),
                            Container(
                              child: RatingBar.builder(
                                initialRating: widget.rate,
                                maxRating: widget.rate,
                                minRating: widget.rate,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                itemSize: 15.0,
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                              //   width: 100,
                              // height: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Flexible(fit: FlexFit.tight, child: SizedBox()), //next
                  Container(
                    child: FloatingActionButton(
                      tooltip: 'chat', // used by assistive technologies
                      onPressed: () {
                        Navigator.pushNamed(context, '/mesenger',
                            arguments: messengerSrgummnets(widget.name));
                      },
                      child: Icon(
                        Icons.chat,
                        size: 15,
                      ),
                    ),
                    width: 35.0,
                  )
                ],
              ),
            ),
            Container(
                child: Row(
              children: [
                Container(
                    child: Text(
                      "Distance:",
                      style: AppStyle.txtRobotoMedium14,
                    ),
                    padding: EdgeInsets.all(16.0)),
                Container(
                    child: Text(
                      widget.distance.toStringAsFixed(2) + "km",
                      style: AppStyle.txtRobotoMedium14,
                    ),
                    padding: EdgeInsets.all(1.0)),
                Container(
                  child: CustomButton(
                    onTap: () {
                      Navigator.pushNamed(context, '/BookingForm',
                          arguments: argumentsbookingform(widget.name));
                    },
                    height: 40,
                    width: MediaQuery.of(context).size.width / 3,
                    text: "Book Appoitment",
                    padding: ButtonPadding.PaddingPDA10,
                  ),
                  padding: getPadding(left: 10, right: 10),
                ),
              ],
            ))
          ], mainAxisSize: MainAxisSize.min),
        ));
  }
}
