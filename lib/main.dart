import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_basic/increment/Counter.dart';
import 'package:flutter_redux_basic/settings.dart';
import 'package:flutter_redux_basic/model/app_state.dart';
import 'package:flutter_redux_basic/redux/reducers.dart';
import 'package:redux/redux.dart';
import 'About.dart';
import 'Home.dart';

void main() {
  final _initialState = AppState(sliderFontSize: 0.5, isItalic: false, isBold: false, counter: 0);
  final Store<AppState> _store = Store<AppState>(reducers, initialState: _initialState);
  runApp(MyApp(store: _store));
}

class MyApp extends StatelessWidget {

  final Store<AppState> store;

  MyApp({this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => Home(),
          '/about': (context) => About(),
          '/settings': (context) => Settings(),
          '/counter': (context) => Counter(),
        },
      ),
    );
  }
}
