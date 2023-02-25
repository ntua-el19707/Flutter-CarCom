import 'dart:math';
import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trial/pages/arguments/argumentsForMessenger.dart';
import 'package:trial/pages/widgets/contact.dart';
import 'package:trial/pages/widgets/messengerHeder.dart';
import 'package:trial/pages/widgets/msgSend.dart';
import 'package:trial/themes/app_decoration.dart';
import 'package:trial/themes/app_style.dart';

class Messenger extends StatefulWidget {
  const Messenger({super.key});

  @override
  State<Messenger> createState() => _MessengerState();
}

String getRandom(int length) {
  const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

class contact {
  final String path_pic;
  final String name;
  List<Widget> conversationarray = [];
  contact(this.name, this.path_pic);

  void conversation_init() {
    int n = Random().nextInt(25);
    conversationarray = [];
    for (int i = 0; i < n; i++) {
      int mode = Random().nextInt(2);
      int length = Random().nextInt(50);
      String msg = getRandom(length);
      if (mode == 1) {
        conversationarray.add(msgSend(msg: msg, direction: true));
      } else {
        conversationarray.add(msgSend(msg: msg, direction: false));
      }
      conversationarray.add(Container(height: 15));
    }
  }

  void pushmsg(String msg) {
    conversationarray.add(msgSend(msg: msg, direction: false));
    conversationarray.add(Container(height: 15));
  }

  bool isEmpty() {
    if (this.name == this.path_pic && this.path_pic == "") {
      return true;
    }
    return false;
  }
}

class _MessengerState extends State<Messenger> {
  double widthAvatarBoard = 80.0;
  double headerSize = 100.0;
  double InputSend = 100.0;
  double size = 70.0;

  String path = "images/mechanicDefault.png";
  int n = 100;
  int contactsn = 10;
  List<contact> Contacts = [];
  void contacts_init() {
    for (int i = 0; i < contactsn; i++) {
      Contacts.add(contact(getRandom(15), path));
    }
  }

  bool happen = false;
  List<Widget> conversationarray = [];

  List<Widget> contactWidget() {
    List<Widget> rsp = [];
    for (int i = 0; i < Contacts.length; i++) {
      rsp.add(GestureDetector(
          onTap: () {
            print("click Contact");
            setState(() {
              this.selected = Contacts[i];
            });
          },
          child: Image.asset(
            Contacts[i].path_pic,
            width: size,
            height: size,
          )));
    }

    return rsp;
  }

  final myController = TextEditingController();
  contact selected = contact("", "");

  @override
  void initState() {
    contacts_init();
    for (int i = 0; i < Contacts.length; i++) {
      Contacts[i].conversation_init();
    }
  }

  @override
  Widget build(BuildContext context) {
    //conversation_init();
    bool error = false;
    messengerSrgummnets arg = new messengerSrgummnets("");
    try {
      arg = ModalRoute.of(context)!.settings.arguments as messengerSrgummnets;
    } catch (err) {
      error = true;
      //print(err);
    }
    if (!error && !happen) {
      Contacts.add(contact(arg.name, path));

      setState(() {
        this.selected = Contacts[Contacts.length - 1];
        this.happen = true;
      });
    }
    if (!this.selected.isEmpty()) {
      return Scaffold(
        body: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: widthAvatarBoard,
              decoration: AppDecoration.outlineGray600,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                      height: headerSize,
                      child: SizedBox(
                          width: 70,
                          child: FloatingActionButton(
                            tooltip: 'back', // used by assistive technologies
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Icon(Icons.arrow_back),

                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.zero),
                          ))),
                  Container(
                      height:
                          MediaQuery.of(context).size.height - headerSize - 5,
                      child: ListView(
                        children: contactWidget(),
                      )),
                ],
              ),
            ),
            SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width:
                        (MediaQuery.of(context).size.width - widthAvatarBoard),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: headerSize,
                                decoration: AppDecoration.outlineDownGrey,
                                child: MessengerHeader(
                                    name: selected.name,
                                    path: selected.path_pic))),
                        SizedBox(
                          height: MediaQuery.of(context).size.height -
                              InputSend -
                              headerSize,
                          child: ListView(
                            children: this.selected.conversationarray,
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
                                      width:
                                          (MediaQuery.of(context).size.width -
                                              widthAvatarBoard -
                                              70),
                                      child: TextField(
                                        controller: myController,
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
                                          onPressed: () {
                                            setState(() {
                                              this.selected.pushmsg(
                                                  myController.value.text);
                                              myController.clear();
                                            });
                                          },
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
    } else {
      return Scaffold(
        body: Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: widthAvatarBoard,
              decoration: AppDecoration.outlineGray600,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                      height: headerSize,
                      child: SizedBox(
                          width: 70,
                          child: FloatingActionButton(
                            tooltip: 'back', // used by assistive technologies
                            onPressed: () {
                              Navigator.pushNamed(context, '/');
                            },
                            child: Icon(Icons.arrow_back),

                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadius.zero),
                          ))),
                  Container(
                      height:
                          MediaQuery.of(context).size.height - headerSize - 5,
                      child: ListView(
                        children: contactWidget(),
                      )),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height,
                width: (MediaQuery.of(context).size.width - widthAvatarBoard),
                child: Column(children: [
                  Container(
                    decoration: AppDecoration.outlineDownGrey,
                    height: headerSize,
                    child: Text(
                      "Please select a contact to communicate",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      height: MediaQuery.of(context).size.height - headerSize,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color.fromARGB(110, 185, 179, 179))),
                ]))
          ],
        ),
      );
    }
  }
}
