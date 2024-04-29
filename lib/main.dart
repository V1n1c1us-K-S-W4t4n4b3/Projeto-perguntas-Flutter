import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() => runApp(PerguntaApp());

// classe que controla o estado da aplicaçao, (interaçao entre codigo e tela)
class PerguntasAppState extends State<PerguntaApp> {
  // variavel que guarda a posiçao da pergunta atual
  var perguntaSelecionada = 0;

// função que seleciona a resposta e vai para a proxima pergunta
  void responder() {
    setState(() {
      perguntaSelecionada++;
    });
    (perguntaSelecionada);
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
            Text(perguntas[perguntaSelecionada]),
            ElevatedButton(child: Text('Resposta 1'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 2'), onPressed: responder),
            ElevatedButton(child: Text('Resposta 3'), onPressed: responder),
          ],
        ),
      ),
    );
  }
}

// classe que constitui a tela atual, nela foi recebido o estado atravez de herança
class PerguntaApp extends StatefulWidget {
  PerguntasAppState createState() {
    return PerguntasAppState();
  }
}
