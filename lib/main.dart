import 'package:app_recoleccion_de_evidencia/src/ui/Ingresar/IngresarMain.dart';
import 'package:app_recoleccion_de_evidencia/src/ui/Registro/RegistroFifth.dart';
import 'package:app_recoleccion_de_evidencia/src/ui/Registro/RegistroFourth.dart';
import 'package:app_recoleccion_de_evidencia/src/ui/Registro/RegistroMain.dart';
import 'package:app_recoleccion_de_evidencia/src/ui/Registro/RegistroSecond.dart';
import 'package:app_recoleccion_de_evidencia/src/ui/Registro/RegistroThird.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Recoleccion de Evidencias',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,
        primarySwatch: Colors.blue,
        backgroundColor: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => IngresarMain(),
        "/RegistroMain": (context) => RegistroMain(),
        "/RegistroMain/Second": (context) => RegistroSecond(),
        "/RegistroMain/Third": (context) => RegistroThird(),
        "/RegistroMain/Fourth": (context) => RegistroFourth(),
        "/RegistroMain/Fifth": (context) => RegistroFifth(),
      },
    );
  }
}
