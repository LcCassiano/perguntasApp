import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarQuestionario;

  Resultado(this.pontuacao, this.reiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao <= 6) {
      return 'Parabéns!';
    } else if (pontuacao < 8) {
      return 'você é bom!';
    } else if (pontuacao < 11) {
      return 'impressionante';
    } else {
      return 'nivel jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        ElevatedButton(
          onPressed: reiniciarQuestionario,
          child: const Text('Reiniciar?'),
          style: ButtonStyle(
            shadowColor:
                MaterialStateProperty.all(Color.fromARGB(255, 54, 114, 244)),
          ),
        ),
      ],
    );
  }
}
