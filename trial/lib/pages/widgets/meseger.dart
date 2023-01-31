import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/widgets/messengerHeder.dart';
import 'package:trial/themes/app_decoration.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  double widthAvatarBoard = 80.0;
  double headerSize = 100.0;
  double InputSend = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: widthAvatarBoard,
            decoration: AppDecoration.outlineGray600,
          ),
          SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              dragStartBehavior: DragStartBehavior.down,
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: (MediaQuery.of(context).size.width - widthAvatarBoard),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                              height: headerSize,
                              decoration: AppDecoration.outlineDownGrey,
                              child: MessengerHeader())),
                      SizedBox(
                        height: MediaQuery.of(context).size.height -
                            InputSend -
                            headerSize -
                            136,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                        ),
                      ),
                      SingleChildScrollView(
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          child: SizedBox(
                              height: InputSend,
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Row(children: [
                                  Container(
                                    width: (MediaQuery.of(context).size.width -
                                        widthAvatarBoard -
                                        70),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: 'Type your Message',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 70,
                                      child: FloatingActionButton(
                                        tooltip:
                                            'send', // used by assistive technologies
                                        onPressed: null,
                                        child: Icon(Icons.send),

                                        shape: BeveledRectangleBorder(
                                            borderRadius: BorderRadius.zero),
                                      ))
                                ]),
                              )))
                    ],
                  )))
        ],
      ),
    );
  }
}
