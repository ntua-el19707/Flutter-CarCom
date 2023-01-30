import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key});

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class Not {
  final String msg;
  final Color color;
  const Not(this.msg, this.color);
}

class _NotificationWidgetState extends State<NotificationWidget> {
  final DateTime Date = DateTime.now();
  List<Not> notificationsList = [
    Not("This is top priority", ColorConstant.red900),
    Not("This is a normal Notifacauion", ColorConstant.black900)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Card(
            child: Column(children: [
      Text(
        "Date:" + Date.toString(),
        style: AppStyle.txtRobotoMedium14,
      ),
      Column(
          children: notificationsList
              .map((i) => ListTile(
                      title: Text(
                    i.msg,
                    style: TextStyle(color: i.color),
                  )))
              .toList()),
    ], mainAxisSize: MainAxisSize.min)));
  }
}

/* Row(
          children: [
            Image.asset(
              "images/carDefault.png",
              width: 70,
              height: 70,
            ),
           ),
            Container(
              child: Switch(
                  value: tracking,
                  activeColor: Colors.green,
                  onChanged: (bool value) {
                    // This is called when the user toggles the switch.
                    setState(() {
                      tracking = value;
                    });
                  }),
              alignment: Alignment.centerRight,
            )
          ],
        ),
      ), */
