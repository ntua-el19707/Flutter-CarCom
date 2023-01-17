import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/carCard.dart';

class Mycars extends StatefulWidget {
  const Mycars({super.key});

  @override
  State<Mycars> createState() => _MyCarsState();
}

class _MyCarsState extends State<Mycars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCarCard(),
    );
  }
}
