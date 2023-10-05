class UmaClasseQualquer
{
  String qualquerParametro = "Aqui recebe qualquer texto";

  int umMetodoComParametroNomeado({int? a, required int b}){
    return a != null? a + b: 0;
  }
}

void main()
{
  UmaClasseQualquer umObjetoQualquer = UmaClasseQualquer();

  print(umObjetoQualquer.qualquerParametro);
  print(umObjetoQualquer.umMetodoComParametroNomeado(a: 2, b: 4));
}