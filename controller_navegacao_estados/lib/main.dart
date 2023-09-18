import 'package:controller_navegacao_estados/data/form_data.dart';
//import 'package:controller_navegacao_estados/recursos/formulario.dart';
import 'package:controller_navegacao_estados/recursos/pagina_inicial.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
        ),
        home: Dados(child: PaginaInicial()));
  }
}
