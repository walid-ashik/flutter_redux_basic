import 'package:flutter/material.dart';

class AppState {
  double sliderFontSize;
  bool isBold;
  bool isItalic;
  int counter;

  AppState({@required this.sliderFontSize, @required this.isBold, @required this.isItalic, @required this.counter});

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    isBold = another.isBold;
    isItalic = another.isItalic;
    counter = another.counter;
  }

  double get viewFontSize => sliderFontSize * 30;

  int get incrementedCounter => counter + 1;
}