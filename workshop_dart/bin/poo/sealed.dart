sealed class Veiculo {}
class Carro extends Veiculo{}
class Motocicleta extends Veiculo {}
class Caminhao extends Veiculo {}

String getVeiculoNumRodas(Veiculo vehicle) {

  return switch (vehicle) {
    Carro() => 'quatro rodas',
    Caminhao() => 'mais de quatro rodas',
    Motocicleta() => "duas rodas"
  };
}

void main()
{
  Carro carro = Carro();

  print(getVeiculoNumRodas(carro));
}