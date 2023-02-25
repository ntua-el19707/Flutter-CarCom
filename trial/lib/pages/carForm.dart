import 'dart:math';

import 'package:camera/camera.dart';
import 'package:trial/main.dart';
import 'package:trial/pages/arguments/formArgummetns.dart';
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

class CarFormPage extends StatefulWidget {
  const CarFormPage({
    super.key,
  });
  //final CameraDescription camera;
  @override
  State<CarFormPage> createState() => _CarFormPageState();
}

String getRandom(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class _CarFormPageState extends State<CarFormPage> {
  @override
  Widget build(BuildContext context) {
    bool error = false;
    print("Build");
    argumentsform arg = new argumentsform("", "", 0.0, "", "", DateTime.now());
    try {
      arg = ModalRoute.of(context)!.settings.arguments as argumentsform;
    } catch (err) {
      arg = new argumentsform("", "", 0.0, "", "", DateTime.now());
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
          index: 0,
        ),
        body: CarForm(
            CarPlates: arg.carPlates,
            Mechanic: arg.Mechanic,
            owner: arg.Owner,
            lastservice: arg.lastservice,
            header: "edit car",
            miles: arg.miles),
        floatingActionButton: MIconButton(),
      );
    } else {
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
          index: 0,
        ),
        body: CarForm(
            CarPlates: "",
            Mechanic: "",
            owner: "",
            lastservice: DateTime.now(),
            header: "add a car",
            miles: 0.0),
        floatingActionButton: MIconButton(),
      );
    }
  }
}
