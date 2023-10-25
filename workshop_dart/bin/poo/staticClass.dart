import 'dart:math';

class Ponto {
  double x, y;
  static double pi = 3.1415926535897932;
  Ponto(this.x, this.y);

  static double distanciaDePontos(Ponto a, Ponto b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Ponto(2, 2);
  var b = Ponto(4, 4);
  var distance = Ponto.distanciaDePontos(a, b);
  
  print(Ponto.pi);
  print(distance);
}