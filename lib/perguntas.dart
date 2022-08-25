import 'dart:ffi';

class Perguntas {
  String enunciado;
  List<int> pontuacao;

  List<String> respostas;
  Perguntas(
      {required this.enunciado,
      required this.respostas,
      required this.pontuacao});
}
