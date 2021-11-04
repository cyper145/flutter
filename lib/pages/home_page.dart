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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //EL Stack funciona para superponer las vistas
              children: const [
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5,
                    price: 10,
                    priceOld: 8,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5,
                    price: 10,
                    priceOld: 8,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceAround, //EL Stack funciona para superponer las vistas
              children: const [
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5,
                    price: 10,
                    priceOld: 8,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5,
                    price: 10,
                    priceOld: 8,
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
                    distance: 5,
                    price: 10,
                    priceOld: 8,
                    score: 14,
                    title: "Pollo entero cortado ala xoz"),
                CardProduct(
                    path: "assets/img/pollo.png",
                    distance: 5,
                    price: 10,
                    priceOld: 8,
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
