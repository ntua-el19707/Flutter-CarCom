import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:random_date/random_date.dart';
import 'package:trial/pages/widgets/appBar.dart';
import 'package:trial/pages/widgets/appoitmentItem.dart';
import 'package:trial/pages/widgets/botmmnavBar.dart';
import 'package:trial/pages/widgets/mechanic.dart';
import 'package:trial/pages/widgets/medengerIci.dart';
import 'package:trial/themes/app_style.dart';

class MechanicPage extends StatefulWidget {
  const MechanicPage({super.key});

  @override
  State<MechanicPage> createState() => _MechanicPageState();
}

class _MechanicPageState extends State<MechanicPage> {
  int n = 3;
  String getRandom(int length) {
    const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random r = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
  }

  List<Widget> _Appoitments() {
    List<Widget> appoitment = [];

    for (int i = 0; i < n; i++) {
      appoitment.add(appoitmentItem(
          Plates: getRandom(6),
          Mechanic: getRandom(15),
          lasts: RandomDate.withRange(2018, 2021).random(),
          service: RandomDate.withRange(2022, 2023).random()));
    }
    return appoitment;
  }

  //List<Widget> mech = [];
  List<Widget> _Mechanicsadd() {
    List<Widget> mech = [];
    for (int i = 0; i < 15; i++) {
      mech.add(Mechanic(
        distance: Random().nextDouble() * 25,
        rate: Random().nextDouble() * 5,
        name: getRandom(15),
      ));
    }
    return mech;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> allI = [..._Appoitments(), ..._Mechanicsadd()];
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text("CarCom", style: AppStyle.txtRobotoMedium),
          alignment: Alignment.center,
        ),
        leading: Icon(Icons.emoji_transportation),
        actions: <Widget>[appBarwidget()],
      ),
      bottomNavigationBar: NavBarBtm(index: 1),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index < allI.length) {
              return allI[index];
            } else {
              print("add 15");
              allI = [...allI, ..._Mechanicsadd()];
              return allI[index + 1];
            }
          },
        ),
      ),
      floatingActionButton: MIconButton(),
    );
  }
}
