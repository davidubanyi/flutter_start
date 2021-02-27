import 'dart:ui';
import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

Color colorConvert(String color) {
  color = color.replaceAll("#", "");
  if (color.length == 6) {
    return Color(int.parse("0xFF"+color));
  } else if (color.length == 8) {
    return Color(int.parse("0x"+color));
  }
}


class ColorConstants {
  static Color lightScaffoldBackgroundColor = hexToColor('#FAFBFC');
  static Color darkScaffoldBackgroundColor = hexToColor('#2F2E2E');
  static Color secondaryAppColor = hexToColor('#5E92F3');
  static Color secondaryDarkAppColor = Colors.white;
  static Color contributionLightBlue = hexToColor('#D9EAFB');
  static Color contributionMainBlue = hexToColor('#007FFF');
  static Color contributionAltBlue = hexToColor('#B6D9FC');
  static Color contributionLightOrange = hexToColor('#F8ECE4');
  static Color contributionMainOrange = hexToColor('#F36A10');
  static Color contributionAltOrange = hexToColor('#FAD3BA');
  static Color contributionLightGreen = hexToColor('#D7F4ED');
  static Color contributionMainGreen = hexToColor('#00916E');
  static Color contributionAltGreen = hexToColor('#AFE3D6');
  static Color contributionLightPurple = hexToColor('#F2EBFA');
  static Color contributionMainPurple = hexToColor('#63289E');
  static Color contributionAltPurple = hexToColor('#E2CEF6');
  static Color bottomNavBarBackground = hexToColor('#091738');
  static Color contributionWalletLightBlue = hexToColor('#E0E5ED');
  static Color contributionWalletMainBlue = hexToColor('#0C375A');
  static Color contributionWalletAltBlue = hexToColor('#C1D1DD');
  static Color cardBorderColor = hexToColor('#E8E8E8');
  static Color walletAmountColor = hexToColor('#051C5D');
  static Color containerBorderColor = colorConvert('#EBEFF7');
}
