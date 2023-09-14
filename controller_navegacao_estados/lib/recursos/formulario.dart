import 'package:flutter/material.dart';

//criando atributos que serão visiveis nas classes que trazer mixin
mixin reutilizavel{
  TextEditingController entradaNome = TextEditingController();

}

//Construção da página pra chamar na main;
class Formulario extends StatefulWidget {
  @override
  State<Formulario> createState() => FormularioState();
}
//Criando o estado
class FormularioState extends State<Formulario> {
  String texto = "algo mudou no campo texto do formulario";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Aprendendo Formulários",),
        ),
      body: MeuCampoTexto(),
    );
  }
}

//criando widdet TextFormField:

class MeuCampoTexto extends StatefulWidget{
  @override
  State<MeuCampoTexto> createState() {
    return MeuCampoTextoEstado();
  }

}

class MeuCampoTextoEstado extends State<MeuCampoTexto> with reutilizavel{
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: entradaNome,
      decoration: InputDecoration(
        hintText: "String qualquer"
      ),
      textAlign: TextAlign.center,
    );
  }

}
