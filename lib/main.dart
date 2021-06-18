import 'package:app_recoleccion_de_evidencia/src/ui/Ingresar/IngresarMain.dart';
import 'package:app_recoleccion_de_evidencia/src/ui/Registro/RegistroMain.dart';
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
        primarySwatch: Colors.grey,
        backgroundColor: Colors.deepPurple,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => IngresarMain(),
        "/RegistroMain": (context) => RegistroMain(),
      },
    );
  }
}
