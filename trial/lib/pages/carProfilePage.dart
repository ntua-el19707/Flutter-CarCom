import 'dart:math';

import 'package:camera/camera.dart';
import 'package:trial/main.dart';
import 'package:trial/pages/CarList.dart';
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

class realpage extends StatelessWidget {
  const realpage({super.key});

  @override
  Widget build(BuildContext context) {
    bool error = false;
    argumentsforProfile arg = new argumentsforProfile("", "");
    try {
      arg = ModalRoute.of(context)!.settings.arguments as argumentsforProfile;
    } catch (err) {
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
        body: Carprof(
          CarPlates: arg.carPlates,
          Owner: arg.Owner,
        ),
        floatingActionButton: MIconButton(),
      );
    } else {
      return Mycars();
    }
  }
}

class CarProfPage extends StatefulWidget {
  const CarProfPage({
    super.key,
  });

  //final CameraDescription camera;
  @override
  State<CarProfPage> createState() => _CarProfPageState();
}

String getRandom(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class _CarProfPageState extends State<CarProfPage> {
  bool error = false;
  @override
  Widget build(BuildContext context) {
    argumentsforProfile arg = new argumentsforProfile("", "");
    try {
      arg = ModalRoute.of(context)!.settings.arguments as argumentsforProfile;
    } catch (err) {
      error = true;
    }
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
      body: Carprof(CarPlates: arg.carPlates, Owner: arg.Owner),
      floatingActionButton: MIconButton(),
    );
  }
}
