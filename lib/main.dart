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
        theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            // primarySwatch: Color.white,
            primaryColor: Colors.blue),
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
