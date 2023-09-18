import 'package:flutter/material.dart';

// O inherited widget é um widget feito para receber informações.
// Ele pode desencadear ações naqueles que estão na sua linhagem (filhos, netos, bisnetos, etc).

class Dados extends InheritedWidget {
  Dados({
    super.key,
    required Widget child,
  }) : super(child: child);

  final List<Widget> listaContaineres = [];

  static Dados of(BuildContext context) {
    final Dados? result = context.dependOnInheritedWidgetOfExactType<Dados>();
    assert(result != null, 'No Dados found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(Dados oldWidget) {
    return oldWidget.listaContaineres.length != listaContaineres.length ; // comparando tamanho anterior ao tamanho atual
  }
  // O InheritedWidget é uma classe feita para receber dados e ter seu estado alterado.
  // Quando seu estado é alterado (ex: lista fica maior), este método é executado.
  // Não apenas é executado, como ele também consegue armazenar o estado anterior (old) para fazer algumas verificações.
  // Se ele retornar verdadeiro, todas as classes que esiverem usando o método of serão notificadas a atualizarem seus estados
}
