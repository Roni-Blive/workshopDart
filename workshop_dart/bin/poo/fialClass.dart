final class Veiculo
{
  void moverVeiculo()
  {
    print("Movimentado");
  }
}

final class Carro extends Veiculo {
  @override
  void moverVeiculo()
  {
    print("Movimentado carro");
  }
}
void main()
{
  Carro carro = Carro();
  carro.moverVeiculo();
}