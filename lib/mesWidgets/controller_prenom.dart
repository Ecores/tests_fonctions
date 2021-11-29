import 'package:flutter/material.dart';

class ControllerPrenom extends StatefulWidget {
  const ControllerPrenom({Key? controllerPrenomKey}) : super(key: controllerPrenomKey);

  @override
  _ControllerPrenomState createState() => _ControllerPrenomState();
}

class _ControllerPrenomState extends State<ControllerPrenom> {

  final prenomValueHolder = TextEditingController();
  String prenom = '';
  getTextInputData2() {
    setState(() {
      prenom = prenomValueHolder.text;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
