import 'package:autonomotrue/views/InicioSesion.dart';
import 'package:autonomotrue/views/Registro.dart';
import 'package:autonomotrue/views/TareaNueva.dart';
import 'package:autonomotrue/views/Tareas.dart';


import './views/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
        primarySwatch: Colors.blue,
    ),
    initialRoute: '/',
    routes: {
        '/': (context) => const HomePageWidget(),
        '/InicioSesion': (context) => const InicioSesionWidget(),
        '/Registro': (context) => const RegistroWidget(),
        '/TareaNueva': (context) => const TareaNuevaWidget(),
        '/Tareas': (context) => const TareasWidget()

    },
);
      // home: const HomePageWidget(),
    // );
  }
}
