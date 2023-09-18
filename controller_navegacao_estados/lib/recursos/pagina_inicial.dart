import 'package:controller_navegacao_estados/data/form_data.dart';
import 'package:controller_navegacao_estados/recursos/formulario.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({super.key});

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprendendo Inherited"),
      ),
      body: ListView(children: Dados.of(context).listaContaineres),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Formulario()));
      }),
    );
  }
}
