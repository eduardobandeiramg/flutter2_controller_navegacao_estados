import 'package:controller_navegacao_estados/recursos/segunda_tela.dart';
//import 'package:controller_navegacao_estados/data/form_data.dart';
import 'package:flutter/material.dart';

//Classe com exemplos de:
//mixin
//keys
//snackbar

//criando atributos que serão visiveis nas classes que trazer mixin
mixin reutilizavel {
  TextEditingController entradanumero = TextEditingController();
  TextEditingController entradaNome = TextEditingController();
}

//Construção da página pra chamar na main;
class Formulario extends StatefulWidget {
  const Formulario();
  @override
  State<Formulario> createState() => FormularioState();
}

//Criando o estado
class FormularioState extends State<Formulario> with reutilizavel {
  String texto = "algo mudou no campo texto do formulario";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(
          "Aprendendo Formulários",
        ),
      ),
      body: MeuCampoTexto(),
    );
  }
}

//criando widdet TextFormField:

class MeuCampoTexto extends StatefulWidget {
  @override
  State<MeuCampoTexto> createState() {
    return MeuCampoTextoEstado();
  }
}

class MeuCampoTextoEstado extends State<MeuCampoTexto> with reutilizavel {
  final chave = GlobalKey<FormState>();

  @override
  Widget build(BuildContext estado) {
    return Form(
      // os TextFormfields devem ficar dentro de um widget Form para que alguns metodos do campo de textto sejam executados da forma correta, como o validator por exemplo.
      key: chave,
      // A chave atribui um identificador ao widget form.
      // A partir dela, é possível acessar alguns detalhes do widget, como seu estado atual.
      child: Column(
        children: [
          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.number,
            // tipo do teclado que será aberto ao clicar no formulario
            controller: entradanumero,
            // armazena o valor inserido
            validator: (value) {
              // verifica o que foi digitado pelo usuário. Caso esteja ok retorna nulo. Caso contrario, exibe mensagem vermelha logo abaixo (return mensagem)
              if (value == "9") {
                return "9 nao doidao";
              }
              else if (value == null){
                return "Campo nulo";
              }
              else if (value.toString().isEmpty){
                return "Campo vazio";
              }
              return null;
            },
            decoration: InputDecoration(
                hintText: "Digite um número diferente de 9",
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          TextFormField(
            keyboardType: TextInputType.name,
            // tipo do teclado que será aberto ao clicar no formulario
            controller: entradaNome,
            // armazena o valor inserido
            validator: (value) {
              // verifica o que foi digitado pelo usuário. Caso esteja ok retorna nulo. Caso contrario, exibe mensagem vermelha logo abaixo (return mensagem)
              if (value?.toLowerCase() == "eduardo") {
                return "Esse nome não!";
              }
              else if (value!.isEmpty) {
                return "Digite um nome válido! Está vazio!";
              }
              return null;
            },
            decoration: InputDecoration(hintText: "Não digite o nome eduardo!"),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                if (chave.currentState!.validate()) {
                  // funcao que será executada caso todos os retornos de todos os validates sejam nulos.
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("enviando seus dados")));
                 // Dados.of(estado).add(Container(child: Text(entradaNome)));

                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                          "existem erros. verifique os campos em vermelho")));
                }
              },
              child: Text("Enviar formulário")),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SegundaTela()));
              },
              child: Icon(Icons.next_plan_rounded)),
        ],
      ),
    );
  }
}
