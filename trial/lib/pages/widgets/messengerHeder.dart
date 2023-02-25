import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/themes/app_style.dart';

class MessengerHeader extends StatefulWidget {
  const MessengerHeader({super.key, required this.name, required this.path});
  final String path;
  final String name;
  @override
  State<MessengerHeader> createState() => _MessengerHeaderState();
}

class _MessengerHeaderState extends State<MessengerHeader> {
  @override
  Widget build(BuildContext context) {
    String path = widget.path;
    String name = widget.name;
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
