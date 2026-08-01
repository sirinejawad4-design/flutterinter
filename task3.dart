class Product {
  int id;
  String name;
  double price;
  String category;
  bool isAvailable;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.isAvailable,
  });

  
  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, '
        'category: $category, available: $isAvailable)';
  }
}

void main() {
  List<Product> products = [
    Product(
      id: 1,
      name: 'Laptop',
      price: 25000.0,
      category: 'Electronics',
      isAvailable: true,
    ),
    Product(
      id: 2,
      name: 'Smartphone',
      price: 18000.0,
      category: 'Electronics',
      isAvailable: false,
    ),
    Product(
      id: 3,
      name: 'Dart Book',
      price: 500.0,
      category: 'Education',
      isAvailable: true,
    ),
    Product(
      id: 4,
      name: 'Headphones',
      price: 1200.0,
      category: 'Electronics',
      isAvailable: true,
    ),
    Product(
      id: 5,
      name: 'Chocolate',
      price: 150.0,
      category: 'Food',
      isAvailable: false,
    ),
  ];

  
  List<Product> availableProducts =
      products.where((product) => product.isAvailable).toList();

  print('1. Available Products:');
  availableProducts.forEach(print);

  
  List<String> productNames =
      products.map((product) => product.name).toList();

  print('\n2. Product Names:');
  print(productNames);

  
  List<String> availableElectronicsNames = products
      .where(
        (product) =>
            product.category == 'Electronics' && product.isAvailable,
      )
      .map((product) => product.name)
      .toList();

  print('\n3. Available Electronics Products:');
  print(availableElectronicsNames);

  
  double totalPrice = products.fold<double>(
    0.0,
    (total, product) => total + product.price,
  );

  print('\n4. Total Price of All Products:');
  print(totalPrice);

  
  double availableProductsTotal = products
      .where((product) => product.isAvailable)
      .fold<double>(
        0.0,
        (total, product) => total + product.price,
      );

  print('\n5. Total Price of Available Products:');
  print(availableProductsTotal);

  
  bool hasExpensiveProduct =
      products.any((product) => product.price > 20000);

  print('\n6. Is there a product with price greater than 20000?');
  print(hasExpensiveProduct);

  
  bool allProductsValid =
      products.every((product) => product.price > 100);

  print('\n7. Do all products have a price greater than 100?');
  print(allProductsValid);

  
  Product firstElectronicsProduct = products.firstWhere(
    (product) => product.category == 'Electronics',
  );

  print('\n8. First Electronics Product:');
  print(firstElectronicsProduct);

  
  List<Product> sortedProducts = [...products];

  sortedProducts.sort(
    (product1, product2) => product1.price.compareTo(product2.price),
  );

  print('\n9. Products Sorted by Price:');
  sortedProducts.forEach(print);


  List<String> categories = [
    'Electronics',
    'Education',
    'Electronics',
    'Food',
  ];

  Set<String> uniqueCategories = categories.toSet();

  print('\n10. Categories Without Duplicates:');
  print(uniqueCategories);
}