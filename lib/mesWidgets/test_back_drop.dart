import 'package:backdrop/backdrop.dart';
import 'package:flutter/material.dart';

class TestBackDrop extends StatelessWidget {
  TestBackDrop({Key? testBackDropKey}) : super(key: testBackDropKey);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: BackdropScaffold(
          appBar: BackdropAppBar(
            title: Text("Backdrop Example"),
            actions: <Widget>[
              BackdropToggleButton(
                icon: AnimatedIcons.list_view,
              )
            ],
          ),
          backLayer: Center(
            child: Text("Back Layer"),
          ),
          frontLayer: Center(
            child: Text("Front Layer"),
          ),
        ),
      ),
    );
  }
}
