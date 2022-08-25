import 'package:projeto_perguntas/perguntas.dart';

class RepositorioPerguntas {
  static List<Perguntas> listaPergunta = [
    Perguntas(
      enunciado: 'Qual sua cor favorita?',
      respostas: ['Preto', 'Azul', 'Verde', 'Vermelho'],
      pontuacao: [1, 2, 3, 4],
    ),
    Perguntas(
      enunciado: 'Seu animal favorito?',
      respostas: ['Lobo', 'Cachorro', 'Gato', 'Coelho'],
      pontuacao: [1, 2, 3, 4],
    ),
    Perguntas(
      enunciado: 'Qual seu personagem favorito?',
      respostas: ['Timao', 'Simba', 'Pumba', 'Mufasa'],
      pontuacao: [1, 2, 3, 4],
    ),
  ];
}
