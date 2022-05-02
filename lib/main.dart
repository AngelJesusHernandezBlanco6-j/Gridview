import 'package:flutter/material.dart';
import 'package:hernandezb/gridviewjugador.dart';

void main() {
  runApp(FutbolApp());
} //FUNCION PRINCIPAL

class FutbolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: PaginaInicial());
  }
} //WIDGET SIN ESTADO
