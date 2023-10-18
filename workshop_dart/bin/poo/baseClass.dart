base class Veiculo
{
  void moverVeiculo()
  {
    print("veiculo se movimentou");
  }
}
base class Carro extends Veiculo
{

}
base class Motocicleta implements Veiculo
{
  @override
  void moverVeiculo()
  {
    print("ué não era pra funcionar isso");
  }
}
void main()
{
  dynamic motocicleta = Motocicleta();
  motocicleta.moverVeiculo();
}