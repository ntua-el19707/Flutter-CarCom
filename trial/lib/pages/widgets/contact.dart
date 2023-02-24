import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class contact extends StatefulWidget {
  const contact({super.key});

  @override
  State<contact> createState() => _contactState();
}

class _contactState extends State<contact> {
  double size = 40.0;
  String path = "images/mechanicDefault.png";
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: size - 5,
      height: size - 5,
    );
  }
}
