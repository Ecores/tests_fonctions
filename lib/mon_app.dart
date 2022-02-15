import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MonApp extends StatefulWidget {
  const MonApp({Key? monAppKey}) : super(key: monAppKey);

  @override
  _MonAppState createState() => _MonAppState();
}

class _MonAppState extends State<MonApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(' Test de fonctions Flutter'),
        ),
        body: SingleChildScrollView(child: MiseEnPage()),
      ),
    );
  }
}

class MiseEnPage extends StatefulWidget {

  @override
  State<MiseEnPage> createState() => _MiseEnPageState();
}

class _MiseEnPageState extends State<MiseEnPage> {

  final textFieldValueHolder = TextEditingController();
  final textFieldValueHolder2 = TextEditingController();

  String result = '';
  getTextInputData() {
    setState(() {
      result = textFieldValueHolder.text;
    });
  }

  String result2 = '';
  getTextInputData2() {
    setState(() {
      result2 = textFieldValueHolder2.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: TextField(
            controller: textFieldValueHolder,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                labelStyle:
                    TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
                border: OutlineInputBorder(),
                labelText: 'Entrez le Nom'),
          ),
        ),
        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: TextField(
            controller: textFieldValueHolder2,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
                labelStyle:
                    TextStyle(fontStyle: FontStyle.italic, fontSize: 15),
                border: OutlineInputBorder(),
                labelText: 'Entrez le Prénom'),
          ),
        ),

        ElevatedButton(onPressed: getTextInputData, child:  const Text("")),

        ElevatedButton(onPressed: getTextInputData2, child: const Text("")),

        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(result, textAlign: TextAlign.center, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ),

        Container(
          height: 80,
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(result2, textAlign: TextAlign.center, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}
