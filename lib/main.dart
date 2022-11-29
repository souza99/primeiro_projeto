import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual a sua cor favorita ?',
    'Qual é o seu animal favorito ?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Perguntas'),
          ),
          body: Column(
            children: <Widget>[
              Text(perguntas.elementAt(0)),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: null,
              ),
              ElevatedButton(child: Text('Resposta 2'), onPressed: null),
              ElevatedButton(child: Text('Resposta 3'), onPressed: null),
            ],
          )),
    );
  }
}

// MaterialApp é o nó rais da aplicação

// Scaffold gera a estrutura
// estou montando minha tela no Scaffold

// column serve para organizar o conteudo na tela
