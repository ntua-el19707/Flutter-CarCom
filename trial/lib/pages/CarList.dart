import 'dart:math';

import 'package:camera/camera.dart';
import 'package:trial/main.dart';
import 'package:trial/pages/widgets/appBar.dart';
import 'package:trial/pages/widgets/appoitmentItem.dart';
import 'package:trial/pages/widgets/ar.dart';
import 'package:trial/pages/widgets/botmmnavBar.dart';
import 'package:trial/pages/widgets/custom_button.dart';
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
import 'package:trial/themes/utils/exportUtils.dart';

class Mycars extends StatefulWidget {
  const Mycars({
    super.key,
  });
  //final CameraDescription camera;
  @override
  State<Mycars> createState() => _MyCarsState();
}

String getRandom(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class _MyCarsState extends State<Mycars> {
  int n = 4; // 4  cars ;
  List<Widget> Cars() {
    List<Widget> cars = [];
    for (int i = 0; i < n; i++) {
      cars.add(MyCarCard(
          Owner: getRandom(15), carPlates: getRandom(6), tracking: false));
    }
    cars.add(
      Container(
        child: CustomButton(
          onTap: () {
            Navigator.popAndPushNamed(context, '/carForm');
          },
          width: MediaQuery.of(context).size.width / 4,
          height: 40,
          text: "add a new Car",
          padding: ButtonPadding.PaddingPDA10,
        ),
        padding: getPadding(left: 10, right: 10),
      ),
    );
    return cars;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text("CarCom", style: AppStyle.txtRobotoMedium),
          alignment: Alignment.center,
        ),
        leading: Icon(Icons.emoji_transportation),
        actions: <Widget>[appBarwidget()],
      ),
      bottomNavigationBar: NavBarBtm(
        index: 0,
      ),
      body: ListView(
        children: Cars(),
      ),
      floatingActionButton: MIconButton(),
    );
  }
}
