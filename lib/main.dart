import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba/helper/responsive.dart';
import 'package:prueba/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Responsive responsive = Responsive.of(context);
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: const Color.fromRGBO(93, 95, 239, 1),
            fontFamily: "SFPRODISPLAY"),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                const SizedBox(width: 5),
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(229, 229, 229, 1),
                        borderRadius: BorderRadius.circular(10)),
                    child: const TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
                const SizedBox(width: 10)
              ],
              backgroundColor: Colors.white,
              bottom: const TabBar(
                  labelColor: Color.fromRGBO(93, 95, 239, 1),
                  labelStyle: TextStyle(fontWeight: FontWeight.w700),
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Color.fromRGBO(93, 95, 239, 1),
                  tabs: [
                    Tab(
                      text: "Productos",
                    ),
                    Tab(
                      text: "Restarantes",
                    ),
                    Tab(
                      text: "Servicios",
                    ),
                  ]),
            ),
            body: TabBarView(
              children: [
                HomePage(),
                const Icon(Icons.directions_transit),
                const Icon(Icons.directions_bike),
              ],
            ),
          ),
        ));
  }
}
