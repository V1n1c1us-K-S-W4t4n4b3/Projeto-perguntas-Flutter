import 'package:flutter/material.dart';
import './questao.dart';
import './respostas.dart';

main() => runApp(PerguntaApp());

// classe que controla o estado da aplicaçao, (interaçao entre codigo e tela)
class _PerguntasAppState extends State<PerguntaApp> {
  // variavel que guarda a posiçao da pergunta atual
  var _perguntaSelecionada = 0;
  final List<Map> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Azul', 'Branco']
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': ['Leão', 'Cavalo', 'Touro', 'Tubarão']
    },
    {
      'texto': 'Qual sua comida japonesa favorita?',
      'respostas': ['Yakissoba', 'Sushi', 'Poke', 'Lámen']
    },
    {
      'texto': 'Qual seu PowerRanger favorito?',
      'respostas': ['Preto', 'Vermelho', 'Azul', 'Branco']
    },
    {
      'texto': 'Qual seu Anime favorito?',
      'respostas': [
        'Naruto',
        'Cavaleiros do Zodiaco',
        'Dragon Ball Z',
        'Yu Yu Hakusho'
      ]
    },
    {
      'texto': 'Qual seu Esporte favorito?',
      'respostas': ['Skate', 'Surf', 'Futebol', 'Volei']
    },
    {
      'texto': 'Qual seu meio de transporte favorito?',
      'respostas': ['Bicicleta', 'Carro', 'Moto', 'Ônibus']
    },
    {
      'texto': 'Qual seu país favorito?',
      'respostas': ['Brasil', 'Japão', 'Italia', 'França']
    },
    {
      'texto': 'Qual sua área de trabalho?',
      'respostas': ['Exatas', 'Humanas', 'Biologicas', 'Todas']
    },
    {
      'texto': 'Qual seu estado civil?',
      'respostas': ['Solteiro', 'Casado', 'Separado', 'Divorciado']
    }
  ];

// função que seleciona a resposta e vai para a proxima pergunta
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String>? respostas = temPerguntaSelecionada
        ? _perguntas[_perguntaSelecionada]['respostas']
        : null;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Column(
                children: <Widget>[
                  Questao(_perguntas[_perguntaSelecionada]['texto']),
                  ...respostas!.map((t) => Resposta(t, _responder)),
                ],
              )
            : null,
      ),
    );
  }
}

// classe que constitui a tela atual, nela foi recebido o estado atravez de herança
class PerguntaApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
