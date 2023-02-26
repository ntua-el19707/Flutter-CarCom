import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/custom_button.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';
import 'package:trial/themes/utils/exportUtils.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({super.key,required this.dateofNot});
 final DateTime dateofNot ;
  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class Not {
  final String msg;
  final Color color;
  const Not(this.msg, this.color);
}

class _NotificationWidgetState extends State<NotificationWidget> {
  String dateFormat(DateTime date){
    String rsp = "${date.day}/${date.month}/${date.year}\nTime: ${date.hour}:${date.minute}";

    return rsp ;
  }
  /*List<Not> notificationsList = [
    Not("This is top priority", ColorConstant.red900),
    Not("This is a normal Notification", ColorConstant.black900)
  ];*/
  Not notification(){
    Not notif ;
    int r = Random().nextInt(2);
    if(r ==1 ){
      notif =  Not("This is top priority", ColorConstant.red900);
    }else{
      notif =  Not("This is a normal Notification", ColorConstant.black900);
    }
    return notif ;
  }
  @override
  Widget build(BuildContext context) {
    final DateTime Date = widget.dateofNot;
    final Not not = notification() ;
    return Container(
        child: Card(
            child: Column(children: [
      Text(
        "Date: " + dateFormat(Date),
        style: AppStyle.txtRobotoMedium14,
      ),
        Container(
          child:Text(not.msg, style: TextStyle(color: not.color))
        )
        ,

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
