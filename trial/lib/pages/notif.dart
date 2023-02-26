

import 'package:flutter/material.dart';
import 'package:trial/pages/widgets/botmmnavBar.dart';
import 'package:trial/pages/widgets/medengerIci.dart';
import 'package:trial/pages/widgets/notification.dart';
import 'package:trial/themes/app_style.dart';


class NotificationPage  extends StatelessWidget {
  const NotificationPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  List<Widget> alln = [NotificationWidget()];
  return Scaffold(
  appBar: AppBar(
  title: Container(
  child: Text("CarCom", style: AppStyle.txtRobotoMedium),
  alignment: Alignment.center,
  ),
  leading: Icon(Icons.emoji_transportation),
  actions: <Widget>[Icon(Icons.notifications)],
  ),
  bottomNavigationBar: NavBarBtm(index: 1),
  body: Container(
  child: ListView (
  children: alln
  )

  ),
  floatingActionButton: MIconButton(),
  );
  }
  }

