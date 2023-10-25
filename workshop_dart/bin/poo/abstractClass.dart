abstract class Veiculo
{
  void movimentaParFrente()
  {
    print("O veiculo andou foi para frente!");
  }
}
class Carro extends Veiculo
{
  int? x;
}
class Motocicleta implements Veiculo
{
  @override
  void movimentaParFrente()
  {
    print("O carro andou foi para frente!");
  }
}


void main()
{
  //dynamic veiculo = Veiculo();
}