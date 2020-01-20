import 'package:flutter/material.dart';

class AppState {
  double sliderFontSize;
  bool isBold;
  bool isItalic;

  AppState({@required this.sliderFontSize, @required this.isBold, @required this.isItalic});

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    isBold = another.isBold;
    isItalic = another.isItalic;
  }

  double get viewFontSize => sliderFontSize * 30;
}