import 'encapsulamento.dart';

void main()
{
  Encapsulamento encapsulado = Encapsulamento();

  encapsulado._variavelProtegita = 5;

  print(encapsulado._variavelProtegita);
  print(encapsulado._metodoEncapsulado(2, 3));
}
