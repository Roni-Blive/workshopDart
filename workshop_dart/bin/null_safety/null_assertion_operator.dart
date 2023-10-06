class NullAssertionOperator {
  String? name;

  void setValueToName(String? value) {
    name = value;
  }

  void printNameLength() {
    try {
      print("'$name' has ${name!.length} spaces.");
    } catch (e, stack) {
      print("\nThere was a problem when trying to get the amount of spaces "
          "the value $name has, using Null Check Operator.");
      print("Error: $e.");
      print("Stack Trace:\n$stack");
    }
  }

  void createPerishableProductWithoutDate() {
    PerishableProduct? perishable =
        PerishableProduct(name: 'Palma da banana', price: 1.00);
    print(perishable.expirationDate);
    final expirationDate = perishable.expirationDate;
    if(expirationDate != null){
      print(expirationDate.hour);
    }
    else{
      print("The product '${perishable.name}' is imperishable!");
    }
  }

  void createPerishableProductWithDate() {
    PerishableProduct? perishable = PerishableProduct(
        name: 'Caixa com 30 ovos', price: 30.00, expirationDate: DateTime.now());
    print(perishable.expirationDate);
    print(perishable.expirationDate!.hour);
  }
}

class PerishableProduct {
  String name;
  double price;
  DateTime? expirationDate;

  PerishableProduct(
      {
        required this.name,
        required this.price,
        this.expirationDate
      });
}
