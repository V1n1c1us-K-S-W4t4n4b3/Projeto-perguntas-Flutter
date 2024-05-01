import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

// classe que controla o estado da aplicaçao, (interaçao entre codigo e tela)
class _PerguntasAppState extends State<PerguntaApp> {
  // variavel que guarda a posiçao da pergunta atual
  var _perguntaSelecionada = 0;

// função que seleciona a resposta e vai para a proxima pergunta
  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    (_perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual sua cor favorita?',
      'Qual seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[_perguntaSelecionada]),
            ElevatedButton(child: Text('Resposta 1'), onPressed: _responder),
            ElevatedButton(child: Text('Resposta 2'), onPressed: _responder),
            ElevatedButton(child: Text('Resposta 3'), onPressed: _responder),
          ],
        ),
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
