void main(){

  Function(dynamic,dynamic) myFunction = soma;
  print("Dymic: ${myFunction(1,2)}");

  Function<T>(T,T) myFunction2 = soma2;
  print("Generics: ${myFunction2(1,2)}");

  int Function([int,int]) myFunction3 = soma3;
  print("Opcional: ${myFunction3(1,2)}");

  int Function({int a, int b}) myFunction4 = soma4;
  print("Nomeado: ${myFunction4(a: 1, b: 2)}");
}

soma(a,b){ return a + b; }
T soma2<T>( T a, T b){ return a; }
int soma3([int a = 0, int b = 0]) { return a + b; }
int soma4({int a = 0, int b = 0}){ return a + b; }