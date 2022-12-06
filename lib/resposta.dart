import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  final void Function() quandoSelecionada;

  Resposta(this.texto, this.quandoSelecionada);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: quandoSelecionada,
        child: Text(texto),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          onPrimary: Colors.amber,
        ),
      ),
    );
  }
}
