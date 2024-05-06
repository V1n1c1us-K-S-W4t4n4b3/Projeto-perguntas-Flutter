import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              Colors.blue), // Define a cor de fundo do botão
          foregroundColor: MaterialStateProperty.all<Color>(
              Colors.white), // Define a cor do texto do botão
        ),
        child: Text(
          texto,
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
