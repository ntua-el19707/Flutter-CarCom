import 'dart:math';

import 'package:camera/camera.dart';
import 'package:trial/main.dart';
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

class arPage extends StatefulWidget {
  const arPage({
    super.key,
  });
  //final CameraDescription camera;
  @override
  State<arPage> createState() => _arPageState();
}

String getRandom(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class _arPageState extends State<arPage> {
  @override
  Widget build(BuildContext context) {
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
        index: 2,
      ),
      body: camerar(),
      floatingActionButton: MIconButton(),
    );
  }
}
