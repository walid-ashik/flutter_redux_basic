import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_basic/drawer_menu.dart';
import 'package:flutter_redux_basic/model/app_state.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Redux Basic'),
      ),
      drawer: DrawerMenu(),
      body: StoreConnector<AppState, AppState>(
          converter: (store) => store.state,
          builder: (context, state) {
            return Container(
              margin: EdgeInsets.all(5.0),
              child: Text(
                getText(),
                style: TextStyle(
                  fontSize: state.viewFontSize,
                  fontWeight:
                      state.isBold ? FontWeight.bold : FontWeight.normal,
                  fontStyle:
                      state.isItalic ? FontStyle.italic : FontStyle.normal,
                ),
              ),
            );
          }),
    );
  }

  String getText() {
    return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
  }
}
