import 'dart:math';

import 'package:camera/camera.dart';
import 'package:trial/main.dart';
import 'package:trial/pages/arguments/argumetsForBookin.dart';
import 'package:trial/pages/arguments/formArgummetns.dart';
import 'package:trial/pages/mechanics.dart';
import 'package:trial/pages/widgets/appoitmentItem.dart';
import 'package:trial/pages/widgets/ar.dart';
import 'package:trial/pages/widgets/botmmnavBar.dart';
import 'package:trial/pages/widgets/medengerIci.dart';
import 'package:trial/pages/widgets/meseger.dart';
import 'package:trial/pages/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/bookAppoitment.dart';
import 'package:trial/pages/widgets/carCard.dart';
import 'package:trial/pages/widgets/carForm.dart';
import 'package:trial/pages/widgets/carprofile.dart';
import 'package:trial/pages/widgets/mechanic.dart';
import 'package:trial/themes/app_style.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({
    super.key,
  });
  //final CameraDescription camera;
  @override
  State<BookingPage> createState() => _BookingPageState();
}

String getRandom(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    bool error = false;
    print("Build");
    argumentsbookingform arg = new argumentsbookingform("");
    try {
      arg = ModalRoute.of(context)!.settings.arguments as argumentsbookingform;
    } catch (err) {
      arg = new argumentsbookingform("");
      error = true;
    }
    if (!error) {
      return Scaffold(
          appBar: AppBar(
            title: Container(
              child: Text("CarCom", style: AppStyle.txtRobotoMedium),
              alignment: Alignment.center,
            ),
            leading: Icon(Icons.emoji_transportation),
            actions: <Widget>[Icon(Icons.notifications)],
          ),
          bottomNavigationBar: NavBarBtm(
            index: 1,
          ),
          body: BookApoitmentForm(
            Mechanic: arg.Mechanic,
          ));
    } else {
      return MechanicPage();
    }
  }
}
