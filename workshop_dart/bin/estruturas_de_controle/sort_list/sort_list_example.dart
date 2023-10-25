import 'product.dart';

void main(){
  SortListExample.printList();
}

class SortListExample{

  static void printList(){
    List<Product> products = [
      Product(4, 'Product 4'),
      Product(2, 'Product 2'),
      Product(6, 'Product 6'),
      Product(1, 'Product 1'),
      Product(3, 'Product 3'),
      Product(-6, 'Product -6'),
    ];

    products.sort((a, b) {
      if (a.idProduct == 6 || a.idProduct == -6) {
        return 1; // Move a to the end
      } else if (b.idProduct == 6 || b.idProduct == -6) {
        return -1; // Move b to the end
      } else {
        return a.idProduct.compareTo(b.idProduct);
      }
    });

    for(int i = 0; i < products.length; i++){
      print(products[i]);
    }
  }
}