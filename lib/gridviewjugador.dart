import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //WIDGET CON ESTADO

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/estadio.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
    "assets/images/jugador.jpg",
    "assets/images/portero.jpg",
    "assets/images/20.jpg",
    "assets/images/antiguo.jpg",
    "assets/images/antiguo.jpg",
    "assets/images/portero.jpg",
    "assets/images/20.jpg",
    "assets/images/estadio.jpg",
    "assets/images/balon.jpg",
    "assets/images/estadio.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
