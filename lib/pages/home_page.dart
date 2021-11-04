import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/widget/card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  @override
  _HomePagerState createState() => _HomePagerState();
}

class _HomePagerState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //Barra de Navegacion desde la clase DrawerUser
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(15),
              child: const Text(
                "Resultados de Busquedas",
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //EL Stack funciona para superponer las vistas
              children: const [
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 7.51,
                    price: 17.01,
                    priceOld: 24.75,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 6.91,
                    price: 28.50,
                    priceOld: 35.01,
                    score: 14,
                    title: "Pollo  x piezas cortado fresco"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, //EL Stack funciona para superponer las vistas
              children: const [
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5.14,
                    price: 10.01,
                    priceOld: 8.01,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5.15,
                    price: 10.15,
                    priceOld: 8.01,
                    score: 14,
                    title: "Pollo x piezas cortado freso"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //EL Stack funciona para superponer las vistas
              children: const [
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5.74,
                    price: 10.75,
                    priceOld: 8.31,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5.78,
                    price: 10.56,
                    priceOld: 8.21,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
