void main()
{

  int a = expoente(2, 2, mutiply);

  print(a);

}

int mutiply( int a, int b )
{
  return a * b;
}

int expoente( int a, int b, Function func )
{
  int result = 1;

  for(int i = 0; i < b; i++)
  {
    result = func(result, a);
  }

  return result;
}
