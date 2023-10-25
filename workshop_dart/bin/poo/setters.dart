class Setter
{
  int? _atributoRestrito;

  int? get atributoRestrito
  {
    return _atributoRestrito;
  }

  set atributoRestrito(int? atributo)
  {
    _atributoRestrito = atributo;
  }
}