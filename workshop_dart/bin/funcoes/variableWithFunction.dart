void main ()
{
  var myFunction = (int a, int b) {
    return a + b;
  };

  int Function(int, int) myFunction2 = (int a, int b) => a + b;

  int Function(int, int) myFunction3 = soma;

  print(myFunction.runtimeType);
  print(myFunction(2, 4,));

  print(myFunction2.runtimeType);
  print(myFunction2(2, 4,));

  print(myFunction3.runtimeType);
  print(myFunction2(2, 4,));
}

int soma(int a, int b)
{
  return a + b;
}