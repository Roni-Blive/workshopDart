void main ()
{
  int a = namedFunction(x: 2, z: 1);

  print(a);
}










int namedFunction({ required int x , int? y, int z = 0})
{
  print(x);
  print(y);
  print(x);

  return 0;
}