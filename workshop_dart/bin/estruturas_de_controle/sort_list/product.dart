class Product {
  double idProduct;
  String name;

  Product(this.idProduct, this.name);

  @override
  String toString(){
    return "ProductId: $idProduct / ProductName: $name";
  }
}