import 'package:flutter_redux_basic/model/app_state.dart';
import 'actions.dart';

AppState reducers(AppState previousSate, dynamic action) {

  AppState newState = AppState.fromAppState(previousSate);

  if (action is FontSize) {
    newState.sliderFontSize = action.payload;
  } else if (action is Italic) {
    newState.isItalic = action.payload;
  } else if (action is Bold) {
    newState.isBold = action.payload;
  } else if (action is Increment) {
    newState.counter = action.payload;
  }

  return newState;
}
