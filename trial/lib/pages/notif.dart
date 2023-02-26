import 'dart:math';

import 'package:camera/camera.dart';
import 'package:random_date/random_date.dart';
import 'package:trial/main.dart';
import 'package:trial/pages/widgets/appBar.dart';
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

class NotPage extends StatefulWidget {
  const NotPage({
    super.key,
  });
  //final CameraDescription camera;
  @override
  State<NotPage> createState() => _NotPageState();
}


class _NotPageState extends State<NotPage> {
  List<DateTime> dateCreator(){
    List<DateTime> rsp = []  ;
    int n =15 ;
    for(int i =0 ;i<n;i++){
      DateTime randomDate = RandomDate.withRange(2018, DateTime.now().year ).random() ;
      rsp.add(randomDate);
    }
    rsp.sort((a,b) =>b.compareTo(a));

    return rsp ;
  }
  List<Widget> getNot(){
    List<Widget> rsp = [];
    List<DateTime> dates = dateCreator();
    for(int  i =0 ; i<dates.length;i++){
      rsp.add(NotificationWidget(dateofNot: dates[i]));
    }
  return rsp;
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
        children: getNot(),
      ),
      floatingActionButton: MIconButton(),
    );
  }
}
