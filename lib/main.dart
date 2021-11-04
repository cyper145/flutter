import 'package:flutter/material.dart';
import 'package:prueba/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.blue),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              actions: <Widget>[
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    decoration: InputDecoration(icon: Icon(Icons.search)),
                  ),
                ),
                const Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                ),
              ],
              backgroundColor: Colors.white,
              bottom: const TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
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
