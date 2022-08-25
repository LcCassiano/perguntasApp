import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projeto_perguntas/repositories/repositorio_perguntas.dart';
import 'package:projeto_perguntas/resultado.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indice = 0;
  int questoesPossiveis = 0;

  int pontuacao = 0;
  bool get temPerguntaSelecionada {
    return questoesPossiveis < RepositorioPerguntas.listaPergunta.length;
  }

  void _reiniciarQuestionario() {
    setState(() {
      indice = 0;
      questoesPossiveis = 0;
      pontuacao = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz')),
      body: temPerguntaSelecionada
          ? Column(children: [
              Text(RepositorioPerguntas.listaPergunta[indice].enunciado),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (questoesPossiveis <
                            RepositorioPerguntas.listaPergunta.length) {
                          questoesPossiveis++;
                          pontuacao += RepositorioPerguntas
                              .listaPergunta[indice].pontuacao[index];
                        }
                        if (indice <
                            RepositorioPerguntas.listaPergunta.length - 1) {
                          indice++;
                        }
                      });
                    },
                    child: Text(RepositorioPerguntas
                        .listaPergunta[indice].respostas[index])),
                itemCount:
                    RepositorioPerguntas.listaPergunta[indice].respostas.length,
              ),
            ])
          : Resultado(pontuacao, _reiniciarQuestionario),
    );
  }
}
