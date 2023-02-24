import 'dart:async';

import 'package:camera/camera.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:horizontal_list/horizontal_list.dart';
import 'package:trial/pages/widgets/camera.dart';
import 'package:trial/themes/utils/exportUtils.dart';
import 'dart:developer';

import 'package:horizontal_list/horizontal_list.dart';
import 'dart:math' as math;
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class camerar extends StatefulWidget {
  const camerar({super.key});
  //final CameraDescription camera;
  @override
  State<camerar> createState() => _camerarState();
}

class _camerarState extends State<camerar> {
  /// Μεταβλητή στην οποία θα αποθηκευτεί η κάμερα που θα επιλέξουμε
  late List<CameraDescription> cameras;
  late CameraController cameraController;
  @override
  void initState() {
    startcamera();
    super.initState();
  }

  void startcamera() async {
    cameras = await availableCameras();
    cameraController = CameraController(
      cameras[0],
      ResolutionPreset.high,
      enableAudio: false,
    );

    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }
      setState(() {}); //To refresh widget
    }).catchError((e) {
      print(e);
    });
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  List<String> rims = [
    "rims/rim.png",
    "rims/rims2.png",
    "rims/rims3.png",
    "rims/rims4.png",
    "rims/rims5.png",
    "rims/rims6.png",
    "rims/rims7.png",
    "rims/rims8.png",
    "rims/rims9.png"
  ];
  List<String> tints = [
    "tints/tint1.png",
    "tints/tint2.png",
    "tints/tint3.jpg",
    "tints/tint4.png",
    "tints/tint5.png"
  ];
  // create some values
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  int mode = 3;
  List<Widget> _itemsComponent() {
    List<Widget> myList = [];
    if (mode == 1) {
      for (int i = 0; i < rims.length; i++) {
        myList.add(Container(
            child: Image.asset(
          'images/' + rims[i],
          width: 70,
          height: 70,
        )));
      }
    } else if (mode == 2) {
      for (int i = 0; i < tints.length; i++) {
        myList.add(Container(
            child: Image.asset(
          'images/' + tints[i],
          width: 70,
          height: 70,
        )));
      }
    }
    return myList;
  }

// ValueChanged<Color> callback
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  Widget bottm() {
    if (mode == 2 || mode == 1) {
      return HorizontalListView(
        width: MediaQuery.of(context).size.width - 15,
        height: horizontalsize,
        list: _itemsComponent(),
        iconPrevious: const Icon(Icons.arrow_back_ios),
        iconNext: const Icon(Icons.arrow_forward_ios),
        isStartedFromEnd: false,
        itemWidth: 250,
        onChanged: (index) {
          print(index);
        },
        onPreviousPressed: () {
          //DO WHAT YOU WANT ON PREVIOUS PRESSED
          log('onPreviousPressed');
        },
        onNextPressed: () {
          //DO WHAT YOU WANT ON NEXT PRESSED
          log('onNextPressed');
        },
      );
    }
    return Container(
        child: SingleChildScrollView(
      child: Container(
          height: horizontalsize,
          width: MediaQuery.of(context).size.width - 8,
          child: MaterialPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          )),
      // Use Material color picker:
      //
      // child: MaterialPicker(
      //   pickerColor: pickerColor,
      //   onColorChanged: changeColor,
      //   showLabel: true, // only on portrait mode
      // ),
      //
      // Use Block color picker:
      //
      // child: BlockPicker(
      //   pickerColor: currentColor,
      //   onColorChanged: changeColor,
      // ),
      //
      // child: MultipleChoiceBlockPicker(
      //   pickerColors: currentColors,
      //   onColorsChanged: changeColors,
      // ),
    ));
  }

  double horizontalsize = 200.0;
  @override
  Widget build(BuildContext context) {
    if (cameraController.value.isInitialized) {
      return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: (MediaQuery.of(context).size.height -
                      horizontalsize -
                      144 -
                      (horizontalsize / 3)),
                  width: MediaQuery.of(context).size.width,
                  child: CameraPreview(cameraController),
                ),
                Container(
                  height: horizontalsize / 3,
                  child: BottomNavigationBar(
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                          icon: Icon(Icons.color_lens_sharp),
                          label: "color change"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.window), label: "window tint"),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.circle), label: "rims"),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    children: [Card(child: bottm())],
                  ),
                )
              ],
            )),
      );
    } else {
      return Scaffold();
    }
  }
}
