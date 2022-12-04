import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: null, child: Text(texto)),
    );
  }
}
