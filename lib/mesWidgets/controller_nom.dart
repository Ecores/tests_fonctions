import 'package:flutter/material.dart';

import '../mon_app.dart';

class ControllerNom extends StatefulWidget {
  const ControllerNom({Key? controllerNomKey}) : super(key: controllerNomKey);

  @override
  _ControllerNomState createState() => _ControllerNomState();
}

class _ControllerNomState extends State<ControllerNom> {

    final nomValueHolder = TextEditingController();
    String nom = '';
    getTextInputData() {
      setState(() {
        nom = nomValueHolder.text;
      });
    }



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
