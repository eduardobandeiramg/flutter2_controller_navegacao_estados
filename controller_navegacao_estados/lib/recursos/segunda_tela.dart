import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
          child: Container(
        height: 400,
        width: 400,
        color: Colors.green,
      )),
    );
  }
}
