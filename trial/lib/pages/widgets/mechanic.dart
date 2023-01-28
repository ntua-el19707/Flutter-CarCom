import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class Mechanic extends StatefulWidget {
  const Mechanic({super.key});

  @override
  State<Mechanic> createState() => _MechanicState();
}

class _MechanicState extends State<Mechanic> {
  String name = "Madara";
  double rating = 5.0;
  double distance = 5.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
      margin:
          const EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
      child: Column(children: [
        Container(
          child: Row(
            children: [
              Container(
                child: Image.asset(
                  "images/mechanicDefault.png",
                  width: 65,
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
                          name,
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
                            initialRating: rating,
                            maxRating: rating,
                            minRating: rating,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
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
                  onPressed: null,
                  child: Icon(
                    Icons.chat,
                    size: 15,
                  ),
                ),
                width: 45.0,
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
                  distance.toString() + "km",
                  style: AppStyle.txtRobotoMedium14,
                ),
                padding: EdgeInsets.all(1.0)),
            Flexible(fit: FlexFit.tight, child: SizedBox()),
            Container(
              child: CustomButton(
                height: 40,
                width: 135,
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
