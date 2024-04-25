import 'package:file_shield/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  List<String> button = [
    '',
    '',
    'AC',
    'C',
    '7',
    '8',
    '9',
    '/',
    '4',
    '5',
    '6',
    '*',
    '1',
    '2',
    '3',
    '-',
    '0',
    '.',
    '=',
    '+',
  ];

  Color getButtonTextColor(String text) {
    if (text == 'AC' ||
        text == 'C' ||
        text == '/' ||
        text == '*' ||
        text == '-' ||
        text == '+') {
      return AppColors.primaryColor;
    } else {
      return AppColors.onPrimaryColor;
    }
  }

  Color getButtonBgColor(String text) {
    if (text == '=') {
      return AppColors.primaryColor;
    } else {
      return AppColors.lightBackgroundColor.withOpacity(.80);
    }
  }
}
