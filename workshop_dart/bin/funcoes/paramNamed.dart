void main ()
{
  int a = namedFunction( 1, z: 1);

  print(a);
}

int namedFunction(int x , { int? y, int z = 0})
{
  print(x);
  print(y);
  print(x);

  return 0;
}