import 'package:app_recoleccion_de_evidencia/src/components/Scaffold/ScaffoldBody.dart';
import 'package:flutter/material.dart';

class RegistroMain extends StatefulWidget {
  const RegistroMain({Key? key}) : super(key: key);

  @override
  _RegistroMainState createState() => _RegistroMainState();
}

class _RegistroMainState extends State<RegistroMain> {
  void setChildren() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: scaffoldBody(Center(
        child: SafeArea(
          child: Container(),
        ),
      )),
    );
  }
}
