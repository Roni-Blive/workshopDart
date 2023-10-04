void main ()
{
  int a = namedFunction( z: 1);

  print(a);
}










int namedFunction({ required int x , int? y, int z = 0})
{
  print(x);
  print(y);
  print(x);

  return 0;
}