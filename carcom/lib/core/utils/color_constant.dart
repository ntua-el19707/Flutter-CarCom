import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray600 = fromHex('#79747e');

  static Color black9004c = fromHex('#4c000000');

  static Color pink50 = fromHex('#ffd8e4');

  static Color blueGray100 = fromHex('#cac4d0');

  static Color gray60001 = fromHex('#7b7878');

  static Color gray800 = fromHex('#49454f');

  static Color red900 = fromHex('#b3261e');

  static Color blueGray10001 = fromHex('#d9d9d9');

  static Color gray900 = fromHex('#1c1b1f');

  static Color deepPurple500 = fromHex('#6750a4');

  static Color black9003f = fromHex('#3f000000');

  static Color yellow400 = fromHex('#f7e75a');

  static Color deepPurple50 = fromHex('#e8def8');

  static Color black90001 = fromHex('#050505');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color whiteA70001 = fromHex('#fffbfe');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
