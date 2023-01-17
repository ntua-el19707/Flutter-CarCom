import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCarCard extends StatefulWidget {
  const MyCarCard({super.key});

  @override
  State<MyCarCard> createState() => _MyCarCardState();
}

class _MyCarCardState extends State<MyCarCard> {
  bool tracking = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Row(
          children: [
            Image.asset(
              "images/carDefault.png",
              width: 70,
              height: 70,
            ),
            Text("Car plates"),
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
      ),
    );
  }
}
