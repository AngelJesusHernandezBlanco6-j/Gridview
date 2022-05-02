import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} //FUNCION PRINCIPAL

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Aprendiendo GridView',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyHomePage());
  }
} //WIDGET SIN ESTADO

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //WIDGET CON ESTADO

class _MyHomePageState extends State<MyHomePage> {
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
