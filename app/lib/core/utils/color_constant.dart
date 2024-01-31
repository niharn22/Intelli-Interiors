import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color red700 = fromHex('#d03329');

  static Color blueA700 = fromHex('#0061ff');

  static Color gray7000c = fromHex('#0c555555');

  static Color green600 = fromHex('#349765');

  static Color gray50 = fromHex('#f9fbff');

  static Color black90066 = fromHex('#66000000');

  static Color black900 = fromHex('#000000');

  static Color blue507f = fromHex('#7fe0ebff');

  static Color blueGray900 = fromHex('#262b35');

  static Color deepOrange400 = fromHex('#d58c48');

  static Color gray70011 = fromHex('#11555555');

  static Color gray90002 = fromHex('#0d062d');

  static Color blueGray200 = fromHex('#bac1ce');

  static Color blueGray100 = fromHex('#d6dae2');

  static Color blue700 = fromHex('#1976d2');

  static Color blueGray400 = fromHex('#74839d');

  static Color blueGray300 = fromHex('#9ea8ba');

  static Color blueGray600 = fromHex('#5f6c86');

  static Color gray900 = fromHex('#2a2a2a');

  static Color gray90001 = fromHex('#0f0e17');

  static Color gray100 = fromHex('#fbf1f2');

  static Color deepOrangeA10033 = fromHex('#33dfa874');

  static Color whiteA70067 = fromHex('#67ffffff');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
