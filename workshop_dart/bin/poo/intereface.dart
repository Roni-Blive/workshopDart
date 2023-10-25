interface class Veiculo
{
  void movimenta()
  {
    print("Veiculo está movimentadno ");
  }
}
class Carro implements Veiculo
{
  @override
  void movimenta()
  {
    print("Carro está movimentadno ");
  }
}
class Motocicleta extends Veiculo
{
  int valor = 4;
}
void main()
{
  Veiculo veiculo = Veiculo();
}