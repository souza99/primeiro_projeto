import 'package:flutter/material.dart';
import 'package:primeiro_projeto/resposta.dart';
import './questao.dart';

main() => runApp(new PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': "Qual a sua cor favorita ?",
      'respostas': ["Preto", "Azul", "Amarelo", "Verde", "Laranja"],
    },
    {
      'texto': "Qual é o seu animal favorito ?",
      'respostas': ['Jirafa', 'Leão', 'Ipopotamo', 'Pinguim'],
    },
    {
      'texto': "Qual sua seleção favorita ?",
      'respostas': ['Italia', 'Japão', 'Brasil', 'E.U.A'],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }

    print(
        '_perguntaSelecionada: ${_perguntaSelecionada} \n tamanho: ${_perguntas.length}');
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada].cast()['respostas']
        : [];

    //Cria uma lista com os meus botões para usar depois
    List<Widget> widgets =
        respostas.map((texto) => Resposta(texto, _responder)).toList();

    // for (var textoResp in respostas) {
    //   //Adiciona botões a lista de respostas
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            //Passar o index do ITEM na lista,
            //e passar a chave para pegar o valor que ela contem
            title: Text("Perguntas"),
          ),
          body: temPerguntaSelecionada
              ? Column(
                  children: <Widget>[
                    Questao(
                        _perguntas[_perguntaSelecionada]['texto'].toString()),
                    //"..." é um Operador spred
                    // Vai trazer todos os items da lista
                    // para adicionar na lista "children: <Widget>["
                    ...widgets
                  ],
                )
              : null),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}





































              // void Function() funcaoQueRetornaUmaFuncao() {
              //   return () {
              //     print('Pergunta Respondida #02');
              //   };
              // }

              //   ElevatedButton(
              //   onPressed: _responder,
              //   child: Text('Resposta 2'),
              // ),

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


// MaterialApp é o nó rais da aplicação

// Scaffold gera a estrutura
// estou montando minha tela no Scaffold

// column serve para organizar o conteudo na tela

// quando passamos a funcao com "()", tipo "responder()" estamos evocando ela
// quando passamos ela sem "()", tipo "responder" passamos ela como parametro
// no caso de Widgets, o que passamos dentro deles, são parametros