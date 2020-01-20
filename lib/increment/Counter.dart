import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_basic/model/app_state.dart';
import 'package:flutter_redux_basic/redux/actions.dart';

class Counter extends StatelessWidget {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState> (
      converter: (store) => store.state,
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Counter'),
          ),
          body: Center(child: Text('count to: ${state.incrementedCounter}')),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('clicked!');
              counter = state.counter + 1;
              StoreProvider.of<AppState>(context).dispatch(Increment(counter));
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
