import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultado {
    if (pontuacao == 10) {
      return 'Você não conhece o kazu!';
    } else if (pontuacao < 50) {
      return 'Sabe quase nada sobre o kazu!';
    } else if (pontuacao < 70) {
      return 'Você conhece o kazu!';
    } else if (pontuacao == 100) {
      return 'Conhece 100% o kazu!';
    } else {
      return 'Você conhece bem o kazu!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
