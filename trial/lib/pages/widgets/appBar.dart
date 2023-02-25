import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/themes/app_style.dart';

class appBarwidget extends StatelessWidget {
  const appBarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {}, child: Icon(Icons.notifications));
  }
}
