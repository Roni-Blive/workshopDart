import 'setters.dart';

void main()
{
  Setter setter = Setter();

  print("Antes de atribuir o valor: ${setter.atributoRestrito}");

  setter.atributoRestrito = 5;

  print("Depois de atribuir o valor: ${setter.atributoRestrito}");
}