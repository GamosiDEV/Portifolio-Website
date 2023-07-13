import 'package:flutter/material.dart';
import 'package:portifolio_website/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
/**
 *  TODO:
 * Colocar as infos no Projeto para ver se vai quebrar
 * Arrumar os Contatos
 * Arrumar algo pra por em baixo dos contatos para deixar um pouco maior 
 * Arrumar botões da barra de inicio
 * Manter a barra de inicio na tela sempre
 * Tornar o site compativel com celulares
 */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
    );
  }
}
