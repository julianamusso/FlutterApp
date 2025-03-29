import 'package:flutter_test/flutter_test.dart';

void main() {
  // Notas dos alunos
  Map<String, List<double>> alunos = {
    'Maria': [8.0, 9.0],
    'Carla': [10.0, 7.0],
    'Elena': [8.5, 8.5],
    'Luiza': [9.0, 8.0],
  };

  test('Calcular médias', () {
    Map<String, double> medias = {};

    // Calcula a média de cada aluno
    alunos.forEach((nome, notas) {
      double soma = notas.reduce((a, b) => a + b);
      double media = soma / notas.length;
      medias[nome] = media;
    });

    expect(medias, {'Maria': 8.5, 'Carla': 8.5, 'Elena': 8.5, 'Luiza': 8.5});
  });
}
