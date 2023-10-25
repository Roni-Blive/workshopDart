void main()
{
 int x = myfunction(1, 2, 3);

 print(x);
}

int myfunction(int z, [int? h, int x = 123, int? y])
{
  print(z);
  print(h);
  print(x);
  print(y);

  return 0;
}