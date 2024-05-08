import 'package:flutter/material.dart';
import './resultado.dart';
import './questionario.dart';

main() => runApp(PerguntaApp());

// classe que controla o estado da aplicaçao, (interaçao entre codigo e tela)
class _PerguntasAppState extends State<PerguntaApp> {
  // variavel que guarda a posiçao da pergunta atual
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual sua cor favorita?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 7},
        {'texto': 'Azul', 'pontuacao': 5},
        {'texto': 'Branco', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu animal favorito?',
      'respostas': [
        {'texto': 'Leão', 'pontuacao': 10},
        {'texto': 'Cavalo', 'pontuacao': 1},
        {'texto': 'Touro', 'pontuacao': 7},
        {'texto': 'Tubarão', 'pontuacao': 5},
      ]
    },
    {
      'texto': 'Qual sua comida japonesa favorita?',
      'respostas': [
        {'texto': 'Yakissoba', 'pontuacao': 10},
        {'texto': 'Sushi', 'pontuacao': 1},
        {'texto': 'Poke', 'pontuacao': 5},
        {'texto': 'Lámen', 'pontuacao': 7},
      ]
    },
    {
      'texto': 'Qual seu PowerRanger favorito?',
      'respostas': [
        {'texto': 'Preto', 'pontuacao': 10},
        {'texto': 'Vermelho', 'pontuacao': 5},
        {'texto': 'Azul', 'pontuacao': 7},
        {'texto': 'Branco', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu Anime favorito?',
      'respostas': [
        {'texto': 'Naruto', 'pontuacao': 10},
        {'texto': 'Cavaleiros do Zodiaco', 'pontuacao': 7},
        {'texto': 'Dragon Ball Z', 'pontuacao': 5},
        {'texto': 'Yu Yu Hakusho', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu Esporte favorito?',
      'respostas': [
        {'texto': 'Skate', 'pontuacao': 10},
        {'texto': 'Surf', 'pontuacao': 7},
        {'texto': 'Futebol', 'pontuacao': 5},
        {'texto': 'Volei', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu meio de transporte favorito?',
      'respostas': [
        {'texto': 'Bicicleta', 'pontuacao': 10},
        {'texto': 'Carro', 'pontuacao': 7},
        {'texto': 'Moto', 'pontuacao': 5},
        {'texto': 'Ônibus', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu país favorito?',
      'respostas': [
        {'texto': 'Brasil', 'pontuacao': 7},
        {'texto': 'Japão', 'pontuacao': 10},
        {'texto': 'Italia', 'pontuacao': 5},
        {'texto': 'França', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual sua área de trabalho?',
      'respostas': [
        {'texto': 'Exatas', 'pontuacao': 10},
        {'texto': 'Humanas', 'pontuacao': 7},
        {'texto': 'Biologicas', 'pontuacao': 5},
        {'texto': 'Todas', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual seu estado civil?',
      'respostas': [
        {'texto': 'Solteiro', 'pontuacao': 10},
        {'texto': 'Casado', 'pontuacao': 7},
        {'texto': 'Separado', 'pontuacao': 5},
        {'texto': 'Divorciado', 'pontuacao': 1},
      ]
    }
  ];

// função que seleciona a resposta e vai para a proxima pergunta
  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal),
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
