import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/themes/app_style.dart';

class MessengerHeader extends StatefulWidget {
  const MessengerHeader({super.key});

  @override
  State<MessengerHeader> createState() => _MessengerHeaderState();
}

class _MessengerHeaderState extends State<MessengerHeader> {
  String path = "images/mechanicDefault.png";
  String name = "Madara";
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Image.asset(
            path,
            width: 65,
            height: 65,
          ),
          padding: EdgeInsets.all(10.0),
        ),
        Container(
            child: Text(
          name,
          style: AppStyle.txtRobotoMedium14,
        ))
      ],
    );
  }
}
