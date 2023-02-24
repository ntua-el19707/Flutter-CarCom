import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MIconButton extends StatelessWidget {
  const MIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'chat', // used by assistive technologies
      onPressed: () {
        Navigator.pushNamed(context, '/mesenger');
      },
      child: Icon(Icons.chat),
    );
  }
}
