import 'package:flutter/material.dart';

main() => runApp(new PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }
  // void Function() funcaoQueRetornaUmaFuncao() {
  //   return () {
  //     print('Pergunta Respondida #02');
  //   };
  // }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual a sua cor favorita ?',
      'Qual é o seu animal favorito ?',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(perguntas[perguntaSelecionada]),
          ),
          body: Column(
            children: <Widget>[
              // Text(perguntas.elementAt(0)),
              // ElevatedButton(
              //   child: Text('Resposta 1'),
              //   onPressed: responder,
              // ),
              // Utilizando uma funcao que retorna outra função
              // ElevatedButton(
              //   child: Text('Resposta 2'),
              //   onPressed: funcaoQueRetornaUmaFuncao(),
              // ),
              // ElevatedButton(
              //   child: Text('Resposta 2'),
              //   onPressed: () {
              //     print("Resposta 2 foi selecionada! ");
              //   },
              // ),
              // ElevatedButton(
              //     child: Text('Resposta 3'),
              //     onPressed: () => print("Resposta 3!!!")),

              Text(perguntas[perguntaSelecionada]),
              ElevatedButton(
                child: Text('Resposta 1'),
                onPressed: responder,
              ),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: Text('Resposta 3'),
              ),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  PerguntaAppState createState() {
    return PerguntaAppState();
  }
}











































// MaterialApp é o nó rais da aplicação

// Scaffold gera a estrutura
// estou montando minha tela no Scaffold

// column serve para organizar o conteudo na tela

// quando passamos a funcao com "()", tipo "responder()" estamos evocando ela
// quando passamos ela sem "()", tipo "responder" passamos ela como parametro
// no caso de Widgets, o que passamos dentro deles, são parametros